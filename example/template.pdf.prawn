pdf.text "#{name} CV", size: 16, style: :bold
pdf.move_down 10

pdf.text "Email: #{email}"
pdf.text "Homepage: #{homepage}"
pdf.text "GitHub: #{github}"
pdf.text "LinkedIn: #{linkedin}"
pdf.text "Twitter: #{twitter}"
pdf.text "GoodReads: #{goodreads}"
pdf.move_down 10

pdf.text "Intro", size: 16, style: :bold
pdf.move_down 10
pdf.text intro
pdf.move_down 10

pdf.text "Skills", size: 16, style: :bold
pdf.move_down 10
skills.each do |skill|
  pdf.text "• #{skill}"
end

pdf.move_down 10
pdf.text "Employment", size: 16, style: :bold
pdf.move_down 10

employment.companies.each do |company|
  pdf.text company.name, size: 14, style: :bold
  pdf.move_down 10
  pdf.text "<a href=\"#{company.homepage}\">#{company.homepage}</a>", inline_format: true
  pdf.move_down 10

  company.projects.each do |project|
    pdf.text "#{project.name} (#{project.start_date} – #{project.end_date})", size: 14, style: :bold
    pdf.move_down 10
    pdf.text project.description
    pdf.move_down 10
    pdf.text project.title

    pdf.move_down 10
    pdf.text "Technologies", size: 14, style: :bold
    pdf.move_down 10

    project.technologies.each do |technology|
      pdf.text "• #{technology}"
    end

    pdf.move_down 10
    pdf.text "Achievements", size: 14, style: :bold
    pdf.move_down 10

    project.achievements.each do |achievement|
      pdf.text "• #{achievement}"
    end

    pdf.move_down 10
  end
end

pdf.text "Education", size: 16, style: :bold
pdf.move_down 10

pdf.text education.university.name, size: 14
pdf.move_down 10
pdf.text "#{education.university.title} (#{education.university.start_date} - #{education.university.end_date})"
