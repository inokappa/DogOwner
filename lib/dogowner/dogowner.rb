#!/usr/bin/env ruby

require 'dogapi'
require 'thor'
require 'terminal-table'

module Dogowner
  class DOGMONCLI < Thor

    desc "list", "Desclibe Monitor list"
    def list(name=nil)
      describe_monitors
    end

    desc "create MONITOR_NAME", "Create Monitor"
    desc "update MONITOR_NAME", "Update Monitor"
    desc "delete MONITOR_NAME", "Delete Monitor"

    private

    def ddinit
      api_key=''
      app_key='' 
      Dogapi::Client.new(api_key, app_key)
    end

    def describe_monitors
      ddinit.get_all_monitors()
    end
  end
end
