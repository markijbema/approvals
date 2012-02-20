module Approvals
  module Reporters
    class TortoisediffReporter < DiffReporter
      include Singleton

      class << self
        def report(received, approved)
          self.instance.report(received, approved)
        end
      end

      def default_launcher
        Launcher.tortoisediff
      end

    end
  end
end
