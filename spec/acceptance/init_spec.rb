# frozen_string_literal: true

require 'spec_helper_acceptance'

describe 'tang class' do
  context 'default parameters' do
    it_behaves_like 'an idempotent resource' do
      let(:manifest) do
        <<-PUPPET
        include clevis
        PUPPET
      end
    end
    describe package('clevis') do
      it { is_expected.to be_installed }
    end
  end
end
