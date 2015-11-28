class WorksSeeder
  DEFAULT_ATTRIBUTES = {
    attribution: "Robert Emerson Head"
  }

  WORKS = [
    {
      title: "Ocho Andres",
      creation_flexdate: "2015-11",
      medium: "Visual Art",
    },
    {
      title: "The Treachery of Magritte",
      creation_flexdate: "2015-11",
      medium: "Visual Art",
    },
    {
      title: "You Be You",
      creation_flexdate: "2015-11",
    },
    {
      title: "Do Me a Platonic Solid",
      creation_flexdate: "2015-10",
      medium: "Sculpture",
    },
    {
      title: "Frost Baby",
      creation_flexdate: "2005",
      medium: "Music Composition",
    },
    {
      title: "Jovian Sleighride",
      creation_flexdate: "2015",
      medium: "Music Composition",
    },
    {
      title: "BBCNNBC",
      creation_flexdate: "2008",
      medium: "Music Composition",
      collection_name: "Hurricane Hunters",
      collection_position: 1,
    },
    {
      title: "Into the storm - Entry",
      creation_flexdate: "2008",
      medium: "Music Composition",
      collection_name: "Hurricane Hunters",
      collection_position: 2,
    },
    {
      title: "Into the storm - Wonder",
      creation_flexdate: "2008",
      medium: "Music Composition",
      collection_name: "Hurricane Hunters",
      collection_position: 3,
    },
    {
      title: "Into the storm - Fury",
      creation_flexdate: "2008",
      medium: "Music Composition",
      collection_name: "Hurricane Hunters",
      collection_position: 4,
    },
    {
      title: "Prep",
      creation_flexdate: "2008",
      medium: "Music Composition",
      collection_name: "Hurricane Hunters",
      collection_position: 5,
    },
    {
      title: "morning with birds",
      creation_flexdate: "2015-03-02",
      medium: "Music Improvisation",
    },
    {
      title: "relevé",
      creation_flexdate: "2015-03-03",
      medium: "Music Improvisation",
    },
    {
      title: "layin' low",
      creation_flexdate: "2015-03-04",
      medium: "Music Improvisation",
    },
    {
      title: "weak sauce",
      creation_flexdate: "2015-03-06",
      medium: "Music Improvisation",
    },
    {
      title: "cinco",
      creation_flexdate: "2015-03-06",
      medium: "Music Improvisation",
    },
    {
      title: "'saving' time",
      creation_flexdate: "2015-03-08",
      medium: "Music Improvisation",
    },
    {
      title: "tiny universe",
      creation_flexdate: "2015-03-09",
      medium: "Music Improvisation",
    },
  ]

  def self.seed!
    WORKS.each do |work_params|
      work_params.reverse_merge!(DEFAULT_ATTRIBUTES)
      Work.find_by(title: work_params[:title]) || Work.create(work_params)
    end
  end
end
