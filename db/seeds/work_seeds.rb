class WorkSeeds
  DEFAULT_ATTRIBUTES = {
    attributions: [{ name_first: "Robert", name_middle: "Emerson", name_last: "Head" }]
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
      title: "The Golden Solid",
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
      title: "Into the Storm - Entry",
      creation_flexdate: "2008",
      medium: "Music Composition",
      collection_name: "Hurricane Hunters",
      collection_position: 2,
    },
    {
      title: "Into the Storm - Wonder",
      creation_flexdate: "2008",
      medium: "Music Composition",
      collection_name: "Hurricane Hunters",
      collection_position: 3,
    },
    {
      title: "Into the Storm - Fury",
      creation_flexdate: "2008",
      medium: "Music Composition",
      collection_name: "Hurricane Hunters",
      collection_position: 4,
    },
    {
      title: "On the Ground",
      creation_flexdate: "2008",
      medium: "Music Composition",
      collection_name: "Hurricane Hunters",
      collection_position: 5,
    },
    {
      title: "morning with birds",
      creation_flexdate: "2015-03-02",
      medium: "Music Improvisation",
      media_url: "https://www.facebook.com/robert.head/videos/vb.1220115019/10206074384398210",
    },
    {
      title: "relevé",
      creation_flexdate: "2015-03-03",
      medium: "Music Improvisation",
      media_url: "https://www.facebook.com/robert.head/videos/vb.1220115019/10206090344397200",
    },
    {
      title: "layin' low",
      creation_flexdate: "2015-03-04",
      medium: "Music Improvisation",
      media_url: "https://www.facebook.com/robert.head/videos/vb.1220115019/10206092808578803",
    },
    {
      title: "weak sauce",
      creation_flexdate: "2015-03-06",
      medium: "Music Improvisation",
      media_url: "https://www.facebook.com/robert.head/videos/vb.1220115019/10206111080075579",
    },
    {
      title: "cinco",
      creation_flexdate: "2015-03-06",
      medium: "Music Improvisation",
      media_url: "https://www.facebook.com/robert.head/videos/vb.1220115019/10206113447454762",
    },
    {
      title: "'saving' time",
      creation_flexdate: "2015-03-08",
      medium: "Music Improvisation",
      media_url: "https://www.facebook.com/robert.head/videos/vb.1220115019/10206129494655932",
    },
    {
      title: "tiny universe",
      creation_flexdate: "2015-03-09",
      medium: "Music Improvisation",
      media_url: "https://youtu.be/m_-WPCLnxyU",
    },
  ]

  def self.seed!
    WORKS.each do |work_attributes|
      work_attributes.reverse_merge!(DEFAULT_ATTRIBUTES)
      attributions = work_attributes.delete(:attributions)
      work = Work.where(title: work_attributes[:title], creation_flexdate: work_attributes[:creation_flexdate]).first_or_create(work_attributes)
      attributions.each do |attribution_attributes|
        work.attributions << Attribution.new(attribution_attributes)
      end
      work.save
    end
  end
end
