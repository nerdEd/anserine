module Anserine
  class Migration
    def initialize(source, destination)
      return unless source && destination
      @source_uri, @destination_uri = source, destination
    end

    def migrate
      Dir.mktmpdir do |tmp_path|
        repo = Git.clone(@source_uri, 'anserine_temp', :path => tmp_path)
        repo.branches.remote do |remote_branch|
          # Checkout this branch -- no tracking
        end

        repo.add_remote('destination', @destination_uri)
        repo.branches.remote do |remote_branch|
          # Push the branch to the destination remote
        end
      end
    end

    private

    def populate_source_branches

    end

    def push_destination

    end
  end
end
