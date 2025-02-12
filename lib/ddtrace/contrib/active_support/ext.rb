# typed: true
module Datadog
  module Contrib
    module ActiveSupport
      # ActiveSupport integration constants
      module Ext
        APP = 'active_support'.freeze
        ENV_ENABLED = 'DD_TRACE_ACTIVE_SUPPORT_ENABLED'.freeze
        ENV_ANALYTICS_ENABLED = 'DD_TRACE_ACTIVE_SUPPORT_ANALYTICS_ENABLED'.freeze
        ENV_ANALYTICS_ENABLED_OLD = 'DD_ACTIVE_SUPPORT_ANALYTICS_ENABLED'.freeze
        ENV_ANALYTICS_SAMPLE_RATE = 'DD_TRACE_ACTIVE_SUPPORT_ANALYTICS_SAMPLE_RATE'.freeze
        ENV_ANALYTICS_SAMPLE_RATE_OLD = 'DD_ACTIVE_SUPPORT_ANALYTICS_SAMPLE_RATE'.freeze
        QUANTIZE_CACHE_MAX_KEY_SIZE = 300
        RESOURCE_CACHE_DELETE = 'DELETE'.freeze
        RESOURCE_CACHE_GET = 'GET'.freeze
        RESOURCE_CACHE_MGET = 'MGET'.freeze
        RESOURCE_CACHE_SET = 'SET'.freeze
        RESOURCE_CACHE_MSET = 'MSET'.freeze
        SERVICE_CACHE = 'active_support-cache'.freeze
        SPAN_CACHE = 'rails.cache'.freeze
        SPAN_TYPE_CACHE = 'cache'.freeze
        TAG_CACHE_BACKEND = 'rails.cache.backend'.freeze
        TAG_CACHE_KEY = 'rails.cache.key'.freeze
        TAG_CACHE_KEY_MULTI = 'rails.cache.keys'.freeze
      end
    end
  end
end
