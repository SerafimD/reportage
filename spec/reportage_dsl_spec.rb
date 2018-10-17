RSpec.describe ReportageDsl do

  subject { described_class::Generator.new }

  it "has a version number" do
    expect(ReportageDsl::VERSION).not_to be nil
  end

  it "does something useful" do
    skip
    expect(false).to eq(true)
  end

  it 'must add new data to base data array add method' do
    subject.add [1, 2, 3]
    expect(subject.report_data).to eq([[1, 2, 3]])
  end

  it 'must add new data to base data array << method' do
    subject << [1, 2, 3]
    expect(subject.report_data).to eq([[1, 2, 3]])
    end

  it 'must add new data to base data array add and << method' do
    subject << [1, 2, 3]
    subject.add 'Hello world'
    expect(subject.report_data).to eq([[1, 2, 3], 'Hello world'])
  end

  it 'must add new data to base data array add and << method' do
    expect(subject.to_pdf).to eq('PDF Generate !!!')
  end


end
