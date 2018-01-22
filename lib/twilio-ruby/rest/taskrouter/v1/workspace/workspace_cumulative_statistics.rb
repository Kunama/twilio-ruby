##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /

module Twilio
  module REST
    class Taskrouter < Domain
      class V1 < Version
        class WorkspaceContext < InstanceContext
          class WorkspaceCumulativeStatisticsList < ListResource
            ##
            # Initialize the WorkspaceCumulativeStatisticsList
            # @param [Version] version Version that contains the resource
            # @param [String] workspace_sid The workspace_sid
            # @return [WorkspaceCumulativeStatisticsList] WorkspaceCumulativeStatisticsList
            def initialize(version, workspace_sid: nil)
              super(version)

              # Path Solution
              @solution = {workspace_sid: workspace_sid}
            end

            ##
            # Provide a user friendly representation
            def to_s
              '#<Twilio.Taskrouter.V1.WorkspaceCumulativeStatisticsList>'
            end
          end

          class WorkspaceCumulativeStatisticsPage < Page
            ##
            # Initialize the WorkspaceCumulativeStatisticsPage
            # @param [Version] version Version that contains the resource
            # @param [Response] response Response from the API
            # @param [Hash] solution Path solution for the resource
            # @return [WorkspaceCumulativeStatisticsPage] WorkspaceCumulativeStatisticsPage
            def initialize(version, response, solution)
              super(version, response)

              # Path Solution
              @solution = solution
            end

            ##
            # Build an instance of WorkspaceCumulativeStatisticsInstance
            # @param [Hash] payload Payload response from the API
            # @return [WorkspaceCumulativeStatisticsInstance] WorkspaceCumulativeStatisticsInstance
            def get_instance(payload)
              WorkspaceCumulativeStatisticsInstance.new(@version, payload, workspace_sid: @solution[:workspace_sid], )
            end

            ##
            # Provide a user friendly representation
            def to_s
              '<Twilio.Taskrouter.V1.WorkspaceCumulativeStatisticsPage>'
            end
          end

          class WorkspaceCumulativeStatisticsContext < InstanceContext
            ##
            # Initialize the WorkspaceCumulativeStatisticsContext
            # @param [Version] version Version that contains the resource
            # @param [String] workspace_sid The workspace_sid
            # @return [WorkspaceCumulativeStatisticsContext] WorkspaceCumulativeStatisticsContext
            def initialize(version, workspace_sid)
              super(version)

              # Path Solution
              @solution = {workspace_sid: workspace_sid, }
              @uri = "/Workspaces/#{@solution[:workspace_sid]}/CumulativeStatistics"
            end

            ##
            # Fetch a WorkspaceCumulativeStatisticsInstance
            # @param [Time] end_date The end_date
            # @param [String] minutes The minutes
            # @param [Time] start_date The start_date
            # @param [String] task_channel The task_channel
            # @param [String] split_by_wait_time The split_by_wait_time
            # @return [WorkspaceCumulativeStatisticsInstance] Fetched WorkspaceCumulativeStatisticsInstance
            def fetch(end_date: :unset, minutes: :unset, start_date: :unset, task_channel: :unset, split_by_wait_time: :unset)
              params = Twilio::Values.of({
                  'EndDate' => Twilio.serialize_iso8601_datetime(end_date),
                  'Minutes' => minutes,
                  'StartDate' => Twilio.serialize_iso8601_datetime(start_date),
                  'TaskChannel' => task_channel,
                  'SplitByWaitTime' => split_by_wait_time,
              })

              payload = @version.fetch(
                  'GET',
                  @uri,
                  params,
              )

              WorkspaceCumulativeStatisticsInstance.new(@version, payload, workspace_sid: @solution[:workspace_sid], )
            end

            ##
            # Provide a user friendly representation
            def to_s
              context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
              "#<Twilio.Taskrouter.V1.WorkspaceCumulativeStatisticsContext #{context}>"
            end
          end

          class WorkspaceCumulativeStatisticsInstance < InstanceResource
            ##
            # Initialize the WorkspaceCumulativeStatisticsInstance
            # @param [Version] version Version that contains the resource
            # @param [Hash] payload payload that contains response from Twilio
            # @param [String] workspace_sid The workspace_sid
            # @return [WorkspaceCumulativeStatisticsInstance] WorkspaceCumulativeStatisticsInstance
            def initialize(version, payload, workspace_sid: nil)
              super(version)

              # Marshaled Properties
              @properties = {
                  'account_sid' => payload['account_sid'],
                  'avg_task_acceptance_time' => payload['avg_task_acceptance_time'].to_i,
                  'start_time' => Twilio.deserialize_iso8601_datetime(payload['start_time']),
                  'end_time' => Twilio.deserialize_iso8601_datetime(payload['end_time']),
                  'reservations_created' => payload['reservations_created'].to_i,
                  'reservations_accepted' => payload['reservations_accepted'].to_i,
                  'reservations_rejected' => payload['reservations_rejected'].to_i,
                  'reservations_timed_out' => payload['reservations_timed_out'].to_i,
                  'reservations_canceled' => payload['reservations_canceled'].to_i,
                  'reservations_rescinded' => payload['reservations_rescinded'].to_i,
                  'split_by_wait_time' => payload['split_by_wait_time'],
                  'wait_duration_until_accepted' => payload['wait_duration_until_accepted'],
                  'wait_duration_until_canceled' => payload['wait_duration_until_canceled'],
                  'tasks_canceled' => payload['tasks_canceled'].to_i,
                  'tasks_completed' => payload['tasks_completed'].to_i,
                  'tasks_created' => payload['tasks_created'].to_i,
                  'tasks_deleted' => payload['tasks_deleted'].to_i,
                  'tasks_moved' => payload['tasks_moved'].to_i,
                  'tasks_timed_out_in_workflow' => payload['tasks_timed_out_in_workflow'].to_i,
                  'workspace_sid' => payload['workspace_sid'],
                  'url' => payload['url'],
              }

              # Context
              @instance_context = nil
              @params = {'workspace_sid' => workspace_sid, }
            end

            ##
            # Generate an instance context for the instance, the context is capable of
            # performing various actions.  All instance actions are proxied to the context
            # @return [WorkspaceCumulativeStatisticsContext] WorkspaceCumulativeStatisticsContext for this WorkspaceCumulativeStatisticsInstance
            def context
              unless @instance_context
                @instance_context = WorkspaceCumulativeStatisticsContext.new(@version, @params['workspace_sid'], )
              end
              @instance_context
            end

            ##
            # @return [String] The account_sid
            def account_sid
              @properties['account_sid']
            end

            ##
            # @return [String] The avg_task_acceptance_time
            def avg_task_acceptance_time
              @properties['avg_task_acceptance_time']
            end

            ##
            # @return [Time] The start_time
            def start_time
              @properties['start_time']
            end

            ##
            # @return [Time] The end_time
            def end_time
              @properties['end_time']
            end

            ##
            # @return [String] The reservations_created
            def reservations_created
              @properties['reservations_created']
            end

            ##
            # @return [String] The reservations_accepted
            def reservations_accepted
              @properties['reservations_accepted']
            end

            ##
            # @return [String] The reservations_rejected
            def reservations_rejected
              @properties['reservations_rejected']
            end

            ##
            # @return [String] The reservations_timed_out
            def reservations_timed_out
              @properties['reservations_timed_out']
            end

            ##
            # @return [String] The reservations_canceled
            def reservations_canceled
              @properties['reservations_canceled']
            end

            ##
            # @return [String] The reservations_rescinded
            def reservations_rescinded
              @properties['reservations_rescinded']
            end

            ##
            # @return [Hash] The split_by_wait_time
            def split_by_wait_time
              @properties['split_by_wait_time']
            end

            ##
            # @return [Hash] The wait_duration_until_accepted
            def wait_duration_until_accepted
              @properties['wait_duration_until_accepted']
            end

            ##
            # @return [Hash] The wait_duration_until_canceled
            def wait_duration_until_canceled
              @properties['wait_duration_until_canceled']
            end

            ##
            # @return [String] The tasks_canceled
            def tasks_canceled
              @properties['tasks_canceled']
            end

            ##
            # @return [String] The tasks_completed
            def tasks_completed
              @properties['tasks_completed']
            end

            ##
            # @return [String] The tasks_created
            def tasks_created
              @properties['tasks_created']
            end

            ##
            # @return [String] The tasks_deleted
            def tasks_deleted
              @properties['tasks_deleted']
            end

            ##
            # @return [String] The tasks_moved
            def tasks_moved
              @properties['tasks_moved']
            end

            ##
            # @return [String] The tasks_timed_out_in_workflow
            def tasks_timed_out_in_workflow
              @properties['tasks_timed_out_in_workflow']
            end

            ##
            # @return [String] The workspace_sid
            def workspace_sid
              @properties['workspace_sid']
            end

            ##
            # @return [String] The url
            def url
              @properties['url']
            end

            ##
            # Fetch a WorkspaceCumulativeStatisticsInstance
            # @param [Time] end_date The end_date
            # @param [String] minutes The minutes
            # @param [Time] start_date The start_date
            # @param [String] task_channel The task_channel
            # @param [String] split_by_wait_time The split_by_wait_time
            # @return [WorkspaceCumulativeStatisticsInstance] Fetched WorkspaceCumulativeStatisticsInstance
            def fetch(end_date: :unset, minutes: :unset, start_date: :unset, task_channel: :unset, split_by_wait_time: :unset)
              context.fetch(
                  end_date: end_date,
                  minutes: minutes,
                  start_date: start_date,
                  task_channel: task_channel,
                  split_by_wait_time: split_by_wait_time,
              )
            end

            ##
            # Provide a user friendly representation
            def to_s
              values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
              "<Twilio.Taskrouter.V1.WorkspaceCumulativeStatisticsInstance #{values}>"
            end

            ##
            # Provide a detailed, user friendly representation
            def inspect
              values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
              "<Twilio.Taskrouter.V1.WorkspaceCumulativeStatisticsInstance #{values}>"
            end
          end
        end
      end
    end
  end
end