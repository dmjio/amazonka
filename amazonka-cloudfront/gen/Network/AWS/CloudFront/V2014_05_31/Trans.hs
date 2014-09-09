{-# LANGUAGE FlexibleContexts  #-}
{-# LANGUAGE NoImplicitPrelude #-}

-- Module      : Network.AWS.CloudFront.V2014_05_31.Trans
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

-- | Amazon CloudFront is a web service that speeds up distribution of your
-- static and dynamic web content, for example, .html, .css, .php, image, and
-- media files, to end users. CloudFront delivers your content through a
-- worldwide network of edge locations. When an end user requests content that
-- you're serving with CloudFront, the user is routed to the edge location
-- that provides the lowest latency, so content is delivered with the best
-- possible performance. If the content is already in that edge location,
-- CloudFront delivers it immediately. If the content is not currently in that
-- edge location, CloudFront retrieves it from an Amazon S3 bucket or an HTTP
-- server (for example, a web server) that you have identified as the source
-- for the definitive version of your content.
--
-- The 'State' operator variants from 'Control.Lens' such as '.=' can be
-- used to modify any additional request parameters before sending.
module Network.AWS.CloudFront.V2014_05_31.Trans
    (
    -- * CreateCloudFrontOriginAccessIdentity
      createCloudFrontOriginAccessIdentity
    -- * CreateDistribution
    , createDistribution
    -- * CreateInvalidation
    , createInvalidation
    -- * CreateStreamingDistribution
    , createStreamingDistribution
    -- * DeleteCloudFrontOriginAccessIdentity
    , deleteCloudFrontOriginAccessIdentity
    -- * DeleteDistribution
    , deleteDistribution
    -- * DeleteStreamingDistribution
    , deleteStreamingDistribution
    -- * GetCloudFrontOriginAccessIdentity
    , getCloudFrontOriginAccessIdentity
    -- * GetCloudFrontOriginAccessIdentityConfig
    , getCloudFrontOriginAccessIdentityConfig
    -- * GetDistribution
    , getDistribution
    -- * GetDistributionConfig
    , getDistributionConfig
    -- * GetInvalidation
    , getInvalidation
    -- * GetStreamingDistribution
    , getStreamingDistribution
    -- * GetStreamingDistributionConfig
    , getStreamingDistributionConfig
    -- * ListCloudFrontOriginAccessIdentities
    , listCloudFrontOriginAccessIdentities
    -- * ListDistributions
    , listDistributions
    -- * ListInvalidations
    , listInvalidations
    -- * ListStreamingDistributions
    , listStreamingDistributions
    -- * UpdateCloudFrontOriginAccessIdentity
    , updateCloudFrontOriginAccessIdentity
    -- * UpdateDistribution
    , updateDistribution
    -- * UpdateStreamingDistribution
    , updateStreamingDistribution

    -- * Re-exported
    , module Control.Monad.Trans.AWS
    , module Network.AWS.CloudFront.V2014_05_31
    ) where

import Control.Monad.Trans.AWS
import Network.AWS.Prelude
import Network.AWS.CloudFront.V2014_05_31

-- | Create a new origin access identity.
--
-- See: 'Network.AWS.CloudFront.V2014_05_31.CreateCloudFrontOriginAccessIdentity'
createCloudFrontOriginAccessIdentity :: ( MonadCatch m
                                        , MonadResource m
                                        , MonadError Error m
                                        , MonadReader Env m
                                        , AWSRequest a
                                        )
                                     => CloudFrontOriginAccessIdentityConfig -- ^ 'ccfoaiCloudFrontOriginAccessIdentityConfig'
                                     -> State CreateCloudFrontOriginAccessIdentity a
                                     -> m CreateCloudFrontOriginAccessIdentityResponse
createCloudFrontOriginAccessIdentity p1 s =
    send $ (mkCreateCloudFrontOriginAccessIdentity p1) &~ s

-- | Create a new distribution.
--
-- See: 'Network.AWS.CloudFront.V2014_05_31.CreateDistribution'
createDistribution :: ( MonadCatch m
                      , MonadResource m
                      , MonadError Error m
                      , MonadReader Env m
                      , AWSRequest a
                      )
                   => DistributionConfig -- ^ 'cdDistributionConfig'
                   -> State CreateDistribution a
                   -> m CreateDistributionResponse
createDistribution p1 s =
    send $ (mkCreateDistribution p1) &~ s

-- | Create a new invalidation.
--
-- See: 'Network.AWS.CloudFront.V2014_05_31.CreateInvalidation'
createInvalidation :: ( MonadCatch m
                      , MonadResource m
                      , MonadError Error m
                      , MonadReader Env m
                      , AWSRequest a
                      )
                   => Text -- ^ 'ciDistributionId'
                   -> InvalidationBatch -- ^ 'ciInvalidationBatch'
                   -> State CreateInvalidation a
                   -> m CreateInvalidationResponse
createInvalidation p1 p2 s =
    send $ (mkCreateInvalidation p1 p2) &~ s

-- | Create a new streaming distribution.
--
-- See: 'Network.AWS.CloudFront.V2014_05_31.CreateStreamingDistribution'
createStreamingDistribution :: ( MonadCatch m
                               , MonadResource m
                               , MonadError Error m
                               , MonadReader Env m
                               , AWSRequest a
                               )
                            => StreamingDistributionConfig -- ^ 'csdStreamingDistributionConfig'
                            -> State CreateStreamingDistribution a
                            -> m CreateStreamingDistributionResponse
createStreamingDistribution p1 s =
    send $ (mkCreateStreamingDistribution p1) &~ s

-- | Delete an origin access identity.
--
-- See: 'Network.AWS.CloudFront.V2014_05_31.DeleteCloudFrontOriginAccessIdentity'
deleteCloudFrontOriginAccessIdentity :: ( MonadCatch m
                                        , MonadResource m
                                        , MonadError Error m
                                        , MonadReader Env m
                                        , AWSRequest a
                                        )
                                     => Text -- ^ 'dcfoaiId'
                                     -> State DeleteCloudFrontOriginAccessIdentity a
                                     -> m DeleteCloudFrontOriginAccessIdentityResponse
deleteCloudFrontOriginAccessIdentity p1 s =
    send $ (mkDeleteCloudFrontOriginAccessIdentity p1) &~ s

-- | Delete a distribution.
--
-- See: 'Network.AWS.CloudFront.V2014_05_31.DeleteDistribution'
deleteDistribution :: ( MonadCatch m
                      , MonadResource m
                      , MonadError Error m
                      , MonadReader Env m
                      , AWSRequest a
                      )
                   => Text -- ^ 'ddId'
                   -> State DeleteDistribution a
                   -> m DeleteDistributionResponse
deleteDistribution p1 s =
    send $ (mkDeleteDistribution p1) &~ s

-- | Delete a streaming distribution.
--
-- See: 'Network.AWS.CloudFront.V2014_05_31.DeleteStreamingDistribution'
deleteStreamingDistribution :: ( MonadCatch m
                               , MonadResource m
                               , MonadError Error m
                               , MonadReader Env m
                               , AWSRequest a
                               )
                            => Text -- ^ 'dsdId'
                            -> State DeleteStreamingDistribution a
                            -> m DeleteStreamingDistributionResponse
deleteStreamingDistribution p1 s =
    send $ (mkDeleteStreamingDistribution p1) &~ s

-- | Get the information about an origin access identity.
--
-- See: 'Network.AWS.CloudFront.V2014_05_31.GetCloudFrontOriginAccessIdentity'
getCloudFrontOriginAccessIdentity :: ( MonadCatch m
                                     , MonadResource m
                                     , MonadError Error m
                                     , MonadReader Env m
                                     , AWSRequest a
                                     )
                                  => Text -- ^ 'gcfoaiId'
                                  -> State GetCloudFrontOriginAccessIdentity a
                                  -> m GetCloudFrontOriginAccessIdentityResponse
getCloudFrontOriginAccessIdentity p1 s =
    send $ (mkGetCloudFrontOriginAccessIdentity p1) &~ s

-- | Get the configuration information about an origin access identity.
--
-- See: 'Network.AWS.CloudFront.V2014_05_31.GetCloudFrontOriginAccessIdentityConfig'
getCloudFrontOriginAccessIdentityConfig :: ( MonadCatch m
                                           , MonadResource m
                                           , MonadError Error m
                                           , MonadReader Env m
                                           , AWSRequest a
                                           )
                                        => Text -- ^ 'gcfoaicId'
                                        -> State GetCloudFrontOriginAccessIdentityConfig a
                                        -> m GetCloudFrontOriginAccessIdentityConfigResponse
getCloudFrontOriginAccessIdentityConfig p1 s =
    send $ (mkGetCloudFrontOriginAccessIdentityConfig p1) &~ s

-- | Get the information about a distribution.
--
-- See: 'Network.AWS.CloudFront.V2014_05_31.GetDistribution'
getDistribution :: ( MonadCatch m
                   , MonadResource m
                   , MonadError Error m
                   , MonadReader Env m
                   , AWSRequest a
                   )
                => Text -- ^ 'gdId'
                -> State GetDistribution a
                -> m GetDistributionResponse
getDistribution p1 s =
    send $ (mkGetDistribution p1) &~ s

-- | Get the configuration information about a distribution.
--
-- See: 'Network.AWS.CloudFront.V2014_05_31.GetDistributionConfig'
getDistributionConfig :: ( MonadCatch m
                         , MonadResource m
                         , MonadError Error m
                         , MonadReader Env m
                         , AWSRequest a
                         )
                      => Text -- ^ 'gdcId'
                      -> State GetDistributionConfig a
                      -> m GetDistributionConfigResponse
getDistributionConfig p1 s =
    send $ (mkGetDistributionConfig p1) &~ s

-- | Get the information about an invalidation.
--
-- See: 'Network.AWS.CloudFront.V2014_05_31.GetInvalidation'
getInvalidation :: ( MonadCatch m
                   , MonadResource m
                   , MonadError Error m
                   , MonadReader Env m
                   , AWSRequest a
                   )
                => Text -- ^ 'giDistributionId'
                -> Text -- ^ 'giId'
                -> State GetInvalidation a
                -> m GetInvalidationResponse
getInvalidation p1 p2 s =
    send $ (mkGetInvalidation p1 p2) &~ s

-- | Get the information about a streaming distribution.
--
-- See: 'Network.AWS.CloudFront.V2014_05_31.GetStreamingDistribution'
getStreamingDistribution :: ( MonadCatch m
                            , MonadResource m
                            , MonadError Error m
                            , MonadReader Env m
                            , AWSRequest a
                            )
                         => Text -- ^ 'gsdId'
                         -> State GetStreamingDistribution a
                         -> m GetStreamingDistributionResponse
getStreamingDistribution p1 s =
    send $ (mkGetStreamingDistribution p1) &~ s

-- | Get the configuration information about a streaming distribution.
--
-- See: 'Network.AWS.CloudFront.V2014_05_31.GetStreamingDistributionConfig'
getStreamingDistributionConfig :: ( MonadCatch m
                                  , MonadResource m
                                  , MonadError Error m
                                  , MonadReader Env m
                                  , AWSRequest a
                                  )
                               => Text -- ^ 'gsdcId'
                               -> State GetStreamingDistributionConfig a
                               -> m GetStreamingDistributionConfigResponse
getStreamingDistributionConfig p1 s =
    send $ (mkGetStreamingDistributionConfig p1) &~ s

-- | List origin access identities.
--
-- See: 'Network.AWS.CloudFront.V2014_05_31.ListCloudFrontOriginAccessIdentities'
listCloudFrontOriginAccessIdentities :: ( MonadCatch m
                                        , MonadResource m
                                        , MonadError Error m
                                        , MonadReader Env (ResumableSource m)
                                        , AWSPager a
                                        )
                                     => State ListCloudFrontOriginAccessIdentities a
                                     -> ResumableSource m ListCloudFrontOriginAccessIdentitiesResponse
listCloudFrontOriginAccessIdentities s =
    paginate (mkListCloudFrontOriginAccessIdentities &~ s)

-- | List distributions.
--
-- See: 'Network.AWS.CloudFront.V2014_05_31.ListDistributions'
listDistributions :: ( MonadCatch m
                     , MonadResource m
                     , MonadError Error m
                     , MonadReader Env (ResumableSource m)
                     , AWSPager a
                     )
                  => State ListDistributions a
                  -> ResumableSource m ListDistributionsResponse
listDistributions s =
    paginate (mkListDistributions &~ s)

-- | List invalidation batches.
--
-- See: 'Network.AWS.CloudFront.V2014_05_31.ListInvalidations'
listInvalidations :: ( MonadCatch m
                     , MonadResource m
                     , MonadError Error m
                     , MonadReader Env (ResumableSource m)
                     , AWSPager a
                     )
                  => Text -- ^ 'liDistributionId'
                  -> State ListInvalidations a
                  -> ResumableSource m ListInvalidationsResponse
listInvalidations p1 s =
    paginate $ (mkListInvalidations p1) &~ s

-- | List streaming distributions.
--
-- See: 'Network.AWS.CloudFront.V2014_05_31.ListStreamingDistributions'
listStreamingDistributions :: ( MonadCatch m
                              , MonadResource m
                              , MonadError Error m
                              , MonadReader Env (ResumableSource m)
                              , AWSPager a
                              )
                           => State ListStreamingDistributions a
                           -> ResumableSource m ListStreamingDistributionsResponse
listStreamingDistributions s =
    paginate (mkListStreamingDistributions &~ s)

-- | Update an origin access identity.
--
-- See: 'Network.AWS.CloudFront.V2014_05_31.UpdateCloudFrontOriginAccessIdentity'
updateCloudFrontOriginAccessIdentity :: ( MonadCatch m
                                        , MonadResource m
                                        , MonadError Error m
                                        , MonadReader Env m
                                        , AWSRequest a
                                        )
                                     => CloudFrontOriginAccessIdentityConfig -- ^ 'ucfoaiCloudFrontOriginAccessIdentityConfig'
                                     -> Text -- ^ 'ucfoaiId'
                                     -> State UpdateCloudFrontOriginAccessIdentity a
                                     -> m UpdateCloudFrontOriginAccessIdentityResponse
updateCloudFrontOriginAccessIdentity p1 p2 s =
    send $ (mkUpdateCloudFrontOriginAccessIdentity p1 p2) &~ s

-- | Update a distribution.
--
-- See: 'Network.AWS.CloudFront.V2014_05_31.UpdateDistribution'
updateDistribution :: ( MonadCatch m
                      , MonadResource m
                      , MonadError Error m
                      , MonadReader Env m
                      , AWSRequest a
                      )
                   => DistributionConfig -- ^ 'udDistributionConfig'
                   -> Text -- ^ 'udId'
                   -> State UpdateDistribution a
                   -> m UpdateDistributionResponse
updateDistribution p1 p2 s =
    send $ (mkUpdateDistribution p1 p2) &~ s

-- | Update a streaming distribution.
--
-- See: 'Network.AWS.CloudFront.V2014_05_31.UpdateStreamingDistribution'
updateStreamingDistribution :: ( MonadCatch m
                               , MonadResource m
                               , MonadError Error m
                               , MonadReader Env m
                               , AWSRequest a
                               )
                            => StreamingDistributionConfig -- ^ 'usdStreamingDistributionConfig'
                            -> Text -- ^ 'usdId'
                            -> State UpdateStreamingDistribution a
                            -> m UpdateStreamingDistributionResponse
updateStreamingDistribution p1 p2 s =
    send $ (mkUpdateStreamingDistribution p1 p2) &~ s
