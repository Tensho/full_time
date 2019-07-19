require 'shared_examples/dsl_attribute_accessors'

describe FullTime::Certificate do
  it_embraces 'DSL attribute accessors',
    title: 'Japan 3D Printer Community – Associate',
    authority: 'J3DPC',
    start_date: 'July 2019',
    end_date: 'July 2020',
    license_number: 'AVG91PF2BE1QQBGD',
    url: 'https://www.j3dpc.com/public/badge.aspx?id=BE1QQBGD'
end
