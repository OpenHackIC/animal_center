require 'spec_helper'

describe CaptionedImagesHelper do
  describe '#show_hero_unit?' do
    context 'given no page' do
      it 'is true' do
        helper.show_hero_unit?.should be_true
      end
    end

    context 'given page 1' do
      it 'is true' do
        params[:page] = 1
        helper.show_hero_unit?.should be_true
      end
    end

    context 'given any other page' do
      it 'is false' do
        params[:page] = 2
        helper.show_hero_unit?.should be_false
      end
    end
  end
end
