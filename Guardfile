group :specs do
  guard :rspec, :all_on_start => false, :all_after_pass => false, :cli => '--fail-fast --format doc -c -r ./lib/*' do
    watch(%r{^spec/.+_spec\.rb$})
    watch(%r{^lib/(.+)\.rb$})                { |m| "spec/#{m[1]}_spec.rb" }
  end
end
