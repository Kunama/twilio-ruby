require 'spec_helper'

describe Twilio::Resources::Taskrouter::WorkspaceInstance::WorkerList::StatisticsList do
  before do
    Twiliodeck.activate
  end

  after do
    Twiliodeck.deactivate
  end

  context "should fetch None" do
    it "and return 200" do
      client = Twilio::REST::TaskrouterClient.new('ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'AUTHTOKEN')
      resource = client.workspaces.get('WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa').workers.statistics.get('', {EndDate: 1199174400, FriendlyName: 'friendly_name', Minutes: 1, StartDate: 1199174400, TaskQueueName: 'task_queue_name', TaskQueueSid: 'task_queue_sid'})
      expect { resource.sid }.not_to raise_error
    end
  
    it "and return 401" do
      client = Twilio::REST::TaskrouterClient.new('ACllllllllllllllllllllllllllllllll', 'AUTHTOKEN')
      resource = client.workspaces.get('WSllllllllllllllllllllllllllllllll').workers.statistics.get('', {EndDate: 1199174400, FriendlyName: 'friendly_name', Minutes: 1, StartDate: 1199174400, TaskQueueName: 'task_queue_name', TaskQueueSid: 'task_queue_sid'})
      expect { resource.sid }.to raise_error Twilio::REST::RequestError
    end
  
    it "and return 404" do
      client = Twilio::REST::TaskrouterClient.new('ACkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk', 'AUTHTOKEN')
      resource = client.workspaces.get('WSkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk').workers.statistics.get('', {EndDate: 1199174400, FriendlyName: 'friendly_name', Minutes: 1, StartDate: 1199174400, TaskQueueName: 'task_queue_name', TaskQueueSid: 'task_queue_sid'})
      expect { resource.sid }.to raise_error Twilio::REST::RequestError
    end
  
    it "and return 500" do
      client = Twilio::REST::TaskrouterClient.new('ACmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm', 'AUTHTOKEN')
      resource = client.workspaces.get('WSmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm').workers.statistics.get('', {EndDate: 1199174400, FriendlyName: 'friendly_name', Minutes: 1, StartDate: 1199174400, TaskQueueName: 'task_queue_name', TaskQueueSid: 'task_queue_sid'})
      expect { resource.sid }.to raise_error Twilio::REST::RequestError
    end
  end
end