# frozen_string_literal: true

require 'spec_helper'

describe 'clevis' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      it { is_expected.to compile.with_all_deps }
      it { is_expected.to contain_class('clevis') }
      it { is_expected.to contain_class('clevis::install') }
      it { is_expected.to contain_class('clevis::hook') }
      it { is_expected.to contain_package('clevis') }
      it { is_expected.to contain_package('clevis-luks') }
      it { is_expected.to contain_package('clevis-dracut') }
      it { is_expected.to contain_exec('/sbin/dracut -f --regenerate -all') }
    end
  end
end
