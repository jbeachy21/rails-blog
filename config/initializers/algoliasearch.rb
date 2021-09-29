require 'algolia'

AlgoliaSearch.configuration = { application_id: 'EFF2RYN348', 
    api_key: '18cec0053c6d106918c626ead5ec496d', pagination_backend: :will_paginate }
Articles.algolia_reindex!


