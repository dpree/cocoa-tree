require 'spec_helper'
require 'cocoatree/pods'

describe Cocoatree::Pods do
  before do
    subject.source_path = File.join(PROJECT_ROOT, 'Specs')
    Octokit.stub(:stargazers) do
      Array.new(rand(100))
    end
  end

  let(:repository) do
    subject.repository subject.source.pods.first
  end

  it 'lists pods' do
    subject.source.pods.should_not be_empty
  end

  it 'shows single pod' do
    repository.should be_github
  end

  it 'extracts github' do
    repository.github.should == '500px/500px-iOS-api'
  end

  it 'counts stars' do
    repository.stars.should > 1
  end

  it 'sorts by stars' do
    a = subject.by_stars.first.stars
    b = subject.by_stars.last.stars
    a.should > b
  end
end
