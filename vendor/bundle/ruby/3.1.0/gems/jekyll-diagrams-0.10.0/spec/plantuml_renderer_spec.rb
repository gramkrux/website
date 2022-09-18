# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Jekyll::Diagrams::PlantUMLRenderer do
  subject(:renderer) do
    described_class.new(Liquid::ParseContext.new, '')
  end

  describe '#build_command' do
    context 'when config is empty' do
      subject { renderer.build_command(config) }

      let(:config) { {} }

      it { is_expected.to match 'plantuml' }
      it { is_expected.to match '-tsvg -pipe' }
    end
  end
end
