require 'shared_examples/dsl_attribute_accessors'

describe FullTime::Certificate do
  it_embraces 'DSL attribute accessors',
    title: 'Danny Choo',
    company: 'danny@dannychoo.com',
    homepage: 'https://dannychoo.com'
end
