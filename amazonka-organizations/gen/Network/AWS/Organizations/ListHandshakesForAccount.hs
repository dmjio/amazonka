{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Organizations.ListHandshakesForAccount
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the current handshakes that are associated with the account of the requesting user.
--
--
-- Handshakes that are ACCEPTED, DECLINED, or CANCELED appear in the results of this API for only 30 days after changing to that state. After that they are deleted and no longer accessible.
--
-- This operation can be called from any account in the organization.
--
--
-- This operation returns paginated results.
module Network.AWS.Organizations.ListHandshakesForAccount
    (
    -- * Creating a Request
      listHandshakesForAccount
    , ListHandshakesForAccount
    -- * Request Lenses
    , lhfaNextToken
    , lhfaFilter
    , lhfaMaxResults

    -- * Destructuring the Response
    , listHandshakesForAccountResponse
    , ListHandshakesForAccountResponse
    -- * Response Lenses
    , lhfarsHandshakes
    , lhfarsNextToken
    , lhfarsResponseStatus
    ) where

import Network.AWS.Lens
import Network.AWS.Organizations.Types
import Network.AWS.Organizations.Types.Product
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listHandshakesForAccount' smart constructor.
data ListHandshakesForAccount = ListHandshakesForAccount'
  { _lhfaNextToken  :: !(Maybe Text)
  , _lhfaFilter     :: !(Maybe HandshakeFilter)
  , _lhfaMaxResults :: !(Maybe Nat)
  } deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListHandshakesForAccount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lhfaNextToken' - Use this parameter if you receive a @NextToken@ response in a previous request that indicates that there is more output available. Set it to the value of the previous call's @NextToken@ response to indicate where the output should continue from.
--
-- * 'lhfaFilter' - Filters the handshakes that you want included in the response. The default is all types. Use the @ActionType@ element to limit the output to only a specified type, such as @INVITE@ , @ENABLE-FULL-CONTROL@ , or @APPROVE-FULL-CONTROL@ . Alternatively, for the @ENABLE-FULL-CONTROL@ handshake that generates a separate child handshake for each member account, you can specify @ParentHandshakeId@ to see only the handshakes that were generated by that parent request.
--
-- * 'lhfaMaxResults' - (Optional) Use this to limit the number of results you want included in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the @NextToken@ response element is present and has a value (is not null). Include that value as the @NextToken@ request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check @NextToken@ after every operation to ensure that you receive all of the results.
listHandshakesForAccount
    :: ListHandshakesForAccount
listHandshakesForAccount =
  ListHandshakesForAccount'
    {_lhfaNextToken = Nothing, _lhfaFilter = Nothing, _lhfaMaxResults = Nothing}


-- | Use this parameter if you receive a @NextToken@ response in a previous request that indicates that there is more output available. Set it to the value of the previous call's @NextToken@ response to indicate where the output should continue from.
lhfaNextToken :: Lens' ListHandshakesForAccount (Maybe Text)
lhfaNextToken = lens _lhfaNextToken (\ s a -> s{_lhfaNextToken = a})

-- | Filters the handshakes that you want included in the response. The default is all types. Use the @ActionType@ element to limit the output to only a specified type, such as @INVITE@ , @ENABLE-FULL-CONTROL@ , or @APPROVE-FULL-CONTROL@ . Alternatively, for the @ENABLE-FULL-CONTROL@ handshake that generates a separate child handshake for each member account, you can specify @ParentHandshakeId@ to see only the handshakes that were generated by that parent request.
lhfaFilter :: Lens' ListHandshakesForAccount (Maybe HandshakeFilter)
lhfaFilter = lens _lhfaFilter (\ s a -> s{_lhfaFilter = a})

-- | (Optional) Use this to limit the number of results you want included in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the @NextToken@ response element is present and has a value (is not null). Include that value as the @NextToken@ request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check @NextToken@ after every operation to ensure that you receive all of the results.
lhfaMaxResults :: Lens' ListHandshakesForAccount (Maybe Natural)
lhfaMaxResults = lens _lhfaMaxResults (\ s a -> s{_lhfaMaxResults = a}) . mapping _Nat

instance AWSPager ListHandshakesForAccount where
        page rq rs
          | stop (rs ^. lhfarsNextToken) = Nothing
          | stop (rs ^. lhfarsHandshakes) = Nothing
          | otherwise =
            Just $ rq & lhfaNextToken .~ rs ^. lhfarsNextToken

instance AWSRequest ListHandshakesForAccount where
        type Rs ListHandshakesForAccount =
             ListHandshakesForAccountResponse
        request = postJSON organizations
        response
          = receiveJSON
              (\ s h x ->
                 ListHandshakesForAccountResponse' <$>
                   (x .?> "Handshakes" .!@ mempty) <*>
                     (x .?> "NextToken")
                     <*> (pure (fromEnum s)))

instance Hashable ListHandshakesForAccount where

instance NFData ListHandshakesForAccount where

instance ToHeaders ListHandshakesForAccount where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("AWSOrganizationsV20161128.ListHandshakesForAccount"
                       :: ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON ListHandshakesForAccount where
        toJSON ListHandshakesForAccount'{..}
          = object
              (catMaybes
                 [("NextToken" .=) <$> _lhfaNextToken,
                  ("Filter" .=) <$> _lhfaFilter,
                  ("MaxResults" .=) <$> _lhfaMaxResults])

instance ToPath ListHandshakesForAccount where
        toPath = const "/"

instance ToQuery ListHandshakesForAccount where
        toQuery = const mempty

-- | /See:/ 'listHandshakesForAccountResponse' smart constructor.
data ListHandshakesForAccountResponse = ListHandshakesForAccountResponse'
  { _lhfarsHandshakes     :: !(Maybe [Handshake])
  , _lhfarsNextToken      :: !(Maybe Text)
  , _lhfarsResponseStatus :: !Int
  } deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListHandshakesForAccountResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lhfarsHandshakes' - A list of 'Handshake' objects with details about each of the handshakes that is associated with the specified account.
--
-- * 'lhfarsNextToken' - If present, this value indicates that there is more output available than is included in the current response. Use this value in the @NextToken@ request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the @NextToken@ response element comes back as @null@ .
--
-- * 'lhfarsResponseStatus' - -- | The response status code.
listHandshakesForAccountResponse
    :: Int -- ^ 'lhfarsResponseStatus'
    -> ListHandshakesForAccountResponse
listHandshakesForAccountResponse pResponseStatus_ =
  ListHandshakesForAccountResponse'
    { _lhfarsHandshakes = Nothing
    , _lhfarsNextToken = Nothing
    , _lhfarsResponseStatus = pResponseStatus_
    }


-- | A list of 'Handshake' objects with details about each of the handshakes that is associated with the specified account.
lhfarsHandshakes :: Lens' ListHandshakesForAccountResponse [Handshake]
lhfarsHandshakes = lens _lhfarsHandshakes (\ s a -> s{_lhfarsHandshakes = a}) . _Default . _Coerce

-- | If present, this value indicates that there is more output available than is included in the current response. Use this value in the @NextToken@ request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the @NextToken@ response element comes back as @null@ .
lhfarsNextToken :: Lens' ListHandshakesForAccountResponse (Maybe Text)
lhfarsNextToken = lens _lhfarsNextToken (\ s a -> s{_lhfarsNextToken = a})

-- | -- | The response status code.
lhfarsResponseStatus :: Lens' ListHandshakesForAccountResponse Int
lhfarsResponseStatus = lens _lhfarsResponseStatus (\ s a -> s{_lhfarsResponseStatus = a})

instance NFData ListHandshakesForAccountResponse
         where
