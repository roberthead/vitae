class WorkSeeds
  DEFAULT_ATTRIBUTES = {
    attributions: [{ name_first: "Robert", name_middle: "Emerson", name_last: "Head" }]
  }

  WORKS = [
    {
      title: "Juxtacompose",
      creation_flexdate: "2017-Spring",
      collection_name: 'Music Software',
      collection_position: 1,
      primary_image_path: "juxtacompose/juxtacompose.png",
      primary_thumbnail_path: "juxtacompose/juxtacompose-thumb.png",
      process: 'coding',
      artist_statement: <<-EOS
        <p>Juxtacompose represents an early draft of work toward my thesis project. In the 'sandbox' of this application, the user can compose a cantus firmus and a counterpoint line and receive real-time feedback provided by the HeadMusic code library.</p>

      <p><a href="http://juxtacompose.herokuapp.com" target="_blank">http://juxtacompose.herokuapp.com</a></p>
      EOS
    },

    {
      title: "Zoo Planet",
      creation_flexdate: "2017-Spring",
      collection_name: 'Games',
      collection_position: 1,
      primary_image_path: "zoo-planet/zoo-planet.png",
      primary_thumbnail_path: "zoo-planet/zoo-planet-thumb.png",
      process: 'game design',
      artist_statement: <<-EOS
        <p>Zoo Planet is an original game design in the collectible card game genre. The original design was revived and encoded into a digital card-making tool during classwork for COMM 560.</p>
      EOS
    },

    {
      title: "L o s t",
      creation_flexdate: "2017-Spring",
      collection_name: 'Games',
      collection_position: 2,
      primary_image_path: "lost/lost.png",
      primary_thumbnail_path: "lost/lost-thumb.png",
      process: 'twine and coding',
      artist_statement: <<-EOS
        <p>"L o s t" is a miniature text-adventure game written with the Twine game engine written for COMM 560. The customizations of the default text features of twine include custom CSS styling and the addition of scrolling panoramic images.</p>

        <p><a href="http://www.philome.la/roberthead/l-o-s-t" target="_blank">http://www.philome.la/roberthead/l-o-s-t</a></p>
      EOS
    },

    {
      title: "One World Midwives",
      creation_flexdate: "2017-Winter",
      collection_name: 'Web design',
      collection_position: 1,
      primary_thumbnail_path: "one-world-midwives/one-world-midwives.png",
      media_url: "http://www.oneworldmidwives.org/",
      process: 'twine and coding',
      artist_statement: <<-EOS
        <p>One World Midwives is a web site that I conceived, designed, and developed soup-to-nuts, for the Responsive Web Design coursework.</p>

        <p><a href="http://www.oneworldmidwives.org/" target="_blank">http://www.oneworldmidwives.org/</a></p>
      EOS
    },

    {
      title: "HeadMusic",
      creation_flexdate: "2017-Winter",
      collection_name: 'Music Software',
      collection_position: 2,
      primary_image_path: "head_music/head-music-contributions-thumb.png",
      primary_thumbnail_path: "head_music/head-music-contributions.png",
      process: 'coding',
      artist_statement: <<-EOS
        <p>HeadMusic is an encoding of the rudaments and analysis elements of music theory into a library in the Ruby programming language.</p>

      <p><a href="https://github.com/roberthead/head_music" target="_blank">https://github.com/roberthead/head_music</a></p>
      EOS
    },

    {
      title: "Composers",
      creation_flexdate: "2016-11",
      collection_name: 'Art of Data',
      collection_position: 1,
      primary_image_path: "composers/composers.png",
      primary_thumbnail_path: "composers/composers-thumb.png",
      process: 'coding',
      artist_statement: <<-EOS
        <p>Composers was developed by pulling data out of Wikipedia and other online sources to create a timeline of significant composers.</p>

      <p><a href="http://composers-api.herokuapp.com" target="_blank">http://composers-api.herokuapp.com</a></p>
      EOS
    },

    {
      title: "Invention in G Major",
      creation_flexdate: "2016-11",
      collection_name: 'Music Compositions',
      collection_position: 1,
      primary_thumbnail_path: "invention/invention-in-g-major.png",
      media_url: "https://flat.io/score/583f6d53ac39360fbeb68078-two-part-invention-in-g-major",
      process: 'Eighteenth-century counterpoint',
    },

    {
      title: "Spirographique",
      creation_flexdate: "2016-11",
      medium: "Web art",
      collection_name: "Art of Data",
      collection_position: 2,
      primary_image_path: "spirographique/spirographique.png",
      primary_thumbnail_path: "spirographique/spirographique-thumb.png",
      media_url: "http://codepen.io/roberthead/full/kkVZKL",
      materials: 'HTML, CSS, Javascript',
      process: "coding",
      artist_statement: <<-EOS
        <p>This process drawing, <em>Spirographique</em>, is a simulation of a Spirograph (<a href="https://en.wikipedia.org/wiki/Spirograph" target="_blank">https://en.wikipedia.org/wiki/Spirograph</a>), a popular toy that creates geometrical designs. My drawing process closely matches the physical characteristics of the meat-space version. An outer ring, as large as the canvas allows, provides the framework within which a smaller ring rolls around the circumference. The smaller ring has a random size and a pen hole a random distance from the center. The random ratio of the inner to outer rings and the position of the pen hole creates geometric relationships that result in a design. Unlike a real Spirograph, I was able to draw with a pen that cycles through the color spectrum at a velocity selected at random. Similarly, the stroke weight of the pen is selected randomly within a small and reasonable range.</p>

      <p><a href="http://codepen.io/roberthead/full/kkVZKL/" target="_blank">http://codepen.io/roberthead/full/kkVZKL/</a></p>

      <p>My design was motivated by a desire to work with geometric relationships that required me to express a little bit of trigonometry in my code. The results that I achieved were very close to my initial expectations. Because the Spirograph is a familiar part of our culture that I played with as a child, I had a fairly strong understanding of the range of possibilities. And indeed, the procedure does reproduce those experiences. The resulting designs vary in their aesthetic interest. For example, if the randomly selected ratios are very close to integer relationships, the pen will draw nearly over the first pass and the design will be simpler, thicker, and slower to evolve than most other results.</p>

      <p>One of the surprises of this project was the result of allowing the procedure to run for a long period of time. The computer, of course, has infinite patience and doesn't tire or get bored. Consequently, if we let it run, we get to experience results that would be difficult to execute in the real world. From these longer-running images secondary effects such as moiré patterns often emerge. I find that I enjoy the evolution of the designs from the initial, first-minute results to the denser patterns of color. Additionally, I was surprised by the meditative quality of watching the line travel in endless swooping arcs. Enjoy!</p>
      EOS
    },

    {
      title: "Two-Part Invention No. 9 in F minor",
      creation_flexdate: "2016",
      collection_name: 'Music Editions',
      collection_position: 1,
      primary_image_path: "bach-invention-9/invention9-BWV780.pdf",
      primary_thumbnail_path: "bach-invention-9/bach-invention-9-thumb.png",
      process: 'Eighteenth-century counterpoint',
      artist_statement: <<-EOS,
        <p><span class="work-of-art-title">Invention No. 9 in F Minor</span> is one of thirteen two-part 'inventions' composed by Baroque master J.S. Bach. I prepared this edition in the process of my own studies on the piano.</p>
      EOS
      attributions: [
        {
          name_last: "Bach",
          name_first: "Johann",
          name_middle: "Sebastian",
          position: 0,
        },
        {
          name_last: "Head",
          name_first: "Robert",
          name_middle: "Emerson",
          position: 1,
          editor: true
        },
      ]
    },

    {
      title: "Golan Levin on Overview Visualizations",
      creation_flexdate: "2016-Fall",
      collection_name: 'Essays',
      collection_position: 0,
      primary_thumbnail_path: "overview-visualizations/overview-visualizations.png",
      primary_image_path: "overview-visualizations/overview-visualizations.pdf",
      process: 'Essay',
      artist_statement: <<-EOS
        <p>This essay was written for coursework in Emerging Media and Digital Arts.</p>
      EOS
    },

    {
      title: "Visualizing Complexity: Mapping Patterns of Information",
      creation_flexdate: "2016-Fall",
      collection_name: 'Essays',
      collection_position: 1,
      primary_thumbnail_path: "visualizing-complexity/visualizing-complexity.png",
      primary_image_path: "visualizing-complexity/visualizing-complexity.pdf",
      process: 'Essay',
      artist_statement: <<-EOS
        <p>This essay was written for coursework in Emerging Media and Digital Arts.</p>
      EOS
    },

    {
      title: "Aaron Koblin and Allison Parrish",
      creation_flexdate: "2016-10-24",
      collection_name: 'Essays',
      collection_position: 2,
      primary_thumbnail_path: "koblin-and-parrish/koblin-and-parrish.png",
      primary_image_path: "koblin-and-parrish/koblin-and-parrish.pdf",
      process: 'Essay',
      artist_statement: <<-EOS
        <p>This essay was written for coursework in Emerging Media and Digital Arts.</p>
      EOS
    },

    {
      title: "Eyeo Festival 2014: A Look at Selected Data Visualization Presentations",
      creation_flexdate: "2016-11",
      collection_name: 'Essays',
      collection_position: 3,
      primary_thumbnail_path: "eyeo-fest-paper/eyeo-fest-paper.png",
      primary_image_path: "eyeo-fest-paper/Eyeo-Festival-2014.pdf",
      process: 'Essay',
      artist_statement: <<-EOS
        <p>This essay was written for coursework in Emerging Media and Digital Arts.</p>
      EOS
    },

    {
      title: "The Golden Solid",
      creation_flexdate: "2015-10",
      medium: "Sculpture",
      collection_name: "xArts Lab",
      collection_position: 1,
      primary_image_path: "golden-solid/constructed.jpg",
      primary_thumbnail_path: "golden-solid/constructed-thumb.jpg",
      artifact_image_path: "golden-solid/design.png",
      artifact_thumbnail_path: "golden-solid/design-thumb.png",
      materials: '1/16" basswood',
      process: "Laser cut and etched",
      artist_statement: <<-EOS
        <p><span class="work-of-art-title">Golden Solid</span> is an exploration of the mathematical relationships between the regular pentagon, the regular dodecahedron, and the golden ratio.</p>

        <p>Plato believed that truth, beauty, and virtue were found in moderate and balanced proportions, a concept in philosophy known as the Golden Mean. He further described the regular solids as an expression of these proportions and theorized that the elements of the universe were composed of these shapes.</p>

        <p>This piece explores "arbitrary levels of nesting" in the form of a dodecahedron, which is a 12-sided solid for which each face is a regular pentagon. The two-dimensional pattern of pentagons from which a dodecahedron is constructed itself fits within larger adjacent pentagons. A pattern of six pentagons can then be scaled (to the smaller portion of the golden ratio, mysteriously) and placed inside each of its constituent pentagons. And so on.</p>

        <p>Nesting one, two, three, four, and five levels of pentagons creates emergent patterns that are difficult to express, but made possible by the precision of the laser cutter.</p>
      EOS
    },
    {
      title: "You Be You",
      creation_flexdate: "2015-11",
      collection_name: "xArts Lab",
      collection_position: 2,
      primary_image_path: "you-be-you/you-be-you.jpg",
      primary_thumbnail_path: "you-be-you/you-be-you-thumb.jpg",
      materials: '1/4" poplar',
      process: "Laser cut and etched",
      artist_statement: <<-EOS
        <p><span class="work-of-art-title">You Be You</span> is an exploration of the sometimes ambiguous and mutable nature of gender.</p>

        <p>My intention is editorial. The piece suggests a decent human response to members of our community who struggle with or assert a new identity – plain and uncomplicated acceptance.</p>

        <p>I chose to present the imagery in the form of a child's puzzle for two reasons. First, the current social and political issues surrounding gender are cast as complex issues that many adults avoid discussing with children. Second, I believe the message expresses basic human dignity that can be and is understood intuitively by toddlers.</p>

        <p>The pieces can be assembled using two options each of three sections of the full person. Regardless of configuration, we respond simply, “Ok.”</p>
      EOS
    },
    {
      title: "The Treachery of Magritte",
      creation_flexdate: "2015-11",
      medium: "Visual Art",
      collection_name: "xArts Lab",
      collection_position: 3,
      primary_image_path: "treachery-of-magritte/treachery-of-magritte.jpg",
      primary_thumbnail_path: "treachery-of-magritte/treachery-of-magritte-thumb.jpg",
      materials: 'iPhone 6',
      process: "Laser etched",
      artist_statement: <<-EOS
        <p>René Magritte's seminal painting <span class="work-of-art-title">The Treachery of Images</span> illustrates the distance between representation and being. His work evokes comparison to Alfred Korzybski’s observation that “The word is not the thing” and “The map is not the territory”. Magritte revisited the idea later in life with Ceci n'est pas pomme, which sold at Christie’s in 2013 for 4.6 million dollars.</p>

        <p>This work, <span class="work-of-art-title">The Treachery of Magritte</span>, is intended to celebrate the artist’s insight and incorporates elements of his source imagery, specifically the french text and tracings of the frame. Additionally, it explores the lexical complexity of the use of symbols in modern corporate branding. Apple, Inc. sells tens of millions of computer and communications devices every year with one of the world’s most recognizable logos. However, an iPhone is not an apple. You can’t eat it and it doesn’t grow on trees. And yet this work is engraved directly upon an Apple, Inc. designed and manufactured artifact.</p>
      EOS
    },
    {
      title: "Basic Nutrition",
      creation_flexdate: "2015-11",
      medium: "Visual Art",
      collection_name: "xArts Lab",
      collection_position: 4,
      primary_image_path: "basic-nutrition/basic-nutrition.jpg",
      primary_thumbnail_path: "basic-nutrition/basic-nutrition-thumb.jpg",
      materials: 'White Fudge Covered Oreos',
      process: "Laser etched",
    },
    {
      title: "Ocho Andres",
      creation_flexdate: "2015-11",
      medium: "Visual Art",
      collection_name: "xArts Lab",
      collection_position: 5,
      primary_image_path: "ocho-andres/ocho-andres.jpg",
      primary_thumbnail_path: "ocho-andres/ocho-andres-thumb.png",
      materials: 'vinyl, taskboard, transfer paper',
      process: "Digitally controlled vinyl cut",
      artist_statement: <<-EOS
        <p>Shepard Fairey is a contemporary artist and graphic designer who famously injected himself into the public consciousness by giving away and otherwise distributing enormous quantities of his work. His <em>Andre the Giant Has a Posse</em> was exceptional for, arguably, creating a new type of what Walter Benjamin called “aura” by eschewing monetary value in exchange for the cultural currency of association with hip hop and skater subcultures. In 1994, under the threat of lawsuit, Fairey created a stylized version of Andre’s face, removed his trademarked name, and added the ominous text “OBEY” as an antiauthoritarian response. In 2008, mass production of Fairey’s “HOPE” poster helped elect America’s first minority president.</p>

        <p><em>Ocho Andres</em> appropriates, replicates, and duplicates Fairey’s work and re-contextualizes the imagery as an exploration of the relationship between the artist and society. The piece walks the line between mass consumer popular culture and conceptual commentary, between creative work and shameless ripoff, and between message and ambiguity. The sarcastic “OBEY” on a red field has been replaced by the directive to “REPRODUCE” on a green field. Oppression is replaced by stern encouragement. Threat is replaced by a playful call to action. The piece intends to encourage us to embrace the possibilities of new tools in a new world of endless reproducibility.</p>
      EOS
    },
    # {
    #   title: "Frost Baby",
    #   creation_flexdate: "2005",
    #   medium: "Music Composition",
    # },
    # {
    #   title: "Jovian Sleighride",
    #   creation_flexdate: "2015",
    #   medium: "Music Composition",
    #   embed_code: <<-EOS
    #     <iframe width="100%" height="166" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/219684400&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false"></iframe>
    #   EOS
    # },
    # {
    #   title: "On the Ground",
    #   creation_flexdate: "2008",
    #   medium: "Music Composition",
    #   collection_name: "Hurricane Hunters",
    #   collection_position: 1,
    # },
    # {
    #   title: "Into the Storm - Entry",
    #   creation_flexdate: "2008",
    #   medium: "Music Composition",
    #   collection_name: "Hurricane Hunters",
    #   collection_position: 2,
    # },
    # {
    #   title: "Into the Storm - Wonder",
    #   creation_flexdate: "2008",
    #   medium: "Music Composition",
    #   collection_name: "Hurricane Hunters",
    #   collection_position: 3,
    # },
    # {
    #   title: "Into the Storm - Fury",
    #   creation_flexdate: "2008",
    #   medium: "Music Composition",
    #   collection_name: "Hurricane Hunters",
    #   collection_position: 4,
    # },
    # {
    #   title: "BBCNNBC",
    #   creation_flexdate: "2008",
    #   medium: "Music Composition",
    #   collection_name: "Hurricane Hunters",
    #   collection_position: 5,
    # },
    {
      title: "morning with birds",
      creation_flexdate: "2015-03-02",
      medium: "Music Improvisation",
      primary_thumbnail_path: "morning-with-birds/morning-with-birds.png",
      media_url: "https://www.facebook.com/robert.head/videos/vb.1220115019/10206074384398210",
      collection_name: "Improvisations",
      collection_position: 1,
    },
    {
      title: "relevé",
      creation_flexdate: "2015-03-03",
      medium: "Music Improvisation",
      primary_thumbnail_path: "morning-with-birds/morning-with-birds.png",
      media_url: "https://www.facebook.com/robert.head/videos/vb.1220115019/10206090344397200",
      collection_name: "Improvisations",
      collection_position: 2,
    },
    {
      title: "layin' low",
      creation_flexdate: "2015-03-04",
      medium: "Music Improvisation",
      primary_thumbnail_path: "morning-with-birds/morning-with-birds.png",
      media_url: "https://www.facebook.com/robert.head/videos/vb.1220115019/10206092808578803",
      collection_name: "Improvisations",
      collection_position: 3,
    },
    {
      title: "weak sauce",
      creation_flexdate: "2015-03-06",
      medium: "Music Improvisation",
      primary_thumbnail_path: "morning-with-birds/morning-with-birds.png",
      media_url: "https://www.facebook.com/robert.head/videos/vb.1220115019/10206111080075579",
      collection_name: "Improvisations",
      collection_position: 4,
    },
    {
      title: "cinco",
      creation_flexdate: "2015-03-06",
      medium: "Music Improvisation",
      primary_thumbnail_path: "morning-with-birds/morning-with-birds.png",
      media_url: "https://www.facebook.com/robert.head/videos/vb.1220115019/10206113447454762",
      collection_name: "Improvisations",
      collection_position: 5,
    },
    {
      title: "'saving' time",
      creation_flexdate: "2015-03-08",
      medium: "Music Improvisation",
      primary_thumbnail_path: "morning-with-birds/morning-with-birds.png",
      media_url: "https://www.facebook.com/robert.head/videos/vb.1220115019/10206129494655932",
      collection_name: "Improvisations",
      collection_position: 6,
    },
    {
      title: "tiny universe",
      creation_flexdate: "2015-03-09",
      primary_thumbnail_path: "morning-with-birds/morning-with-birds.png",
      medium: "Music Improvisation",
      media_url: "https://youtu.be/m_-WPCLnxyU",
      collection_name: "Improvisations",
      collection_position: 7,
    },
    {
      title: "wood and rosin",
      creation_flexdate: "2012",
      medium: "Poetry",
      primary_thumbnail_path: "wood-and-rosin/wood-and-rosin.png",
      text_content: <<-EOS
      how is it, stranger,
      that you came to know
      the hidden contents of this heart?

      who divulged my secrets
      my private designs
      that you might draw them out
      into the air
      with your bow

      with wood and rosin
      string and empty space?

      who disclosed my business
      that you might
      assault me unawares
      in this terminal passage
      now enchanted
      transfigured
      made prayerful

      you play the innocent
      but your merciless strokes
      lay siege to these halls
      and I stand transfixed

      my longings stand betrayed
      my sufferings
      the deep self

      is it, indeed, that I am as nothing
      my spirit pretentious and simple?

      or is it that somehow
      we are something

      one in the underneath
      EOS
    },
    {
      title: "bells",
      creation_flexdate: "2015-12",
      medium: "Poetry",
      primary_thumbnail_path: "bells/bells-thumbnail.png",
      text_content: <<-EOS
        Fog lifts, snow line falls
        Warm village in the valley
        Ring the Christmas bells!
      EOS
    },
    {
      title: "Farewell to a Room",
      creation_flexdate: "2011-05-18",
      medium: "Poetry",
      # primary_image_path: "farewell/farewell.jpg",
      primary_thumbnail_path: "farewell/farewell-thumb.jpg",
      text_content: <<-EOS
        I am rooted by the scent, the smell
        of old astrology books and cigarette smoke
        lingering in the emptied home of my grandparents
        now both deceased

        in the library there was a desk
        and, in 1983, on it sat one of the muses of my youth
        an IBM PC, original model
        5150 with Intel 8088 and 64k

        I studied pages
        stiff pages bound with three biting rings
        arcane, wizardly wonders
        BASIC

        what couldn't have been more
        than a few stolen hours on a dozen Sundays
        with the glow of Redskins glory
        behind the door

        gave rise to my present
        serving magic for hire
        in the emerald city
        and now San Francisco

        I remember the beautiful cacophony
        of dual floppy drives
        the enchanting green glow
        the thrill of achievement

        and I am grateful to Grandmother Mary
        for her curiosities
        and to my grandfather
        for building the home that housed them
      EOS
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
