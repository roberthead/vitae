class WorksSeeder
  WORKS = [
    {
      title: "Ocho Andres",
      creation_flexdate: "2015-11"
    },
    {
      title: "The Treachery of Magritte",
      creation_flexdate: "2015-11"
    }
  ]

  def self.seed!
    WORKS.each do |work_params|
      Work.find_by(title: work_params[:title]) || Work.create(work_params)
    end
  end
end
