RSpec.describe Reportage do

  subject { described_class.new }

  it "has a version number" do
    expect(Reportage::VERSION).not_to be nil
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

  it 'must generate PDF report file' do
    file_path = 'lib/../spec/output/out.pdf'
    subject.filename = file_path
    subject << [1, 2, 3]
    subject.to_pdf
    expect(File.file?(file_path)).to be true
  end

  it 'must generate XLS report file' do
    file_path = 'lib/../spec/output/out.xls'
    subject.filename = file_path
    subject << [1, 2, 3]
    subject.to_xls
    expect(File.file?(file_path)).to be true
  end


end
