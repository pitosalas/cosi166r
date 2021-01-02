require "coursegen"

# bucket for AWS Deployment of the course
AWS_BUCKET = "cosi166b"

# Local directory path for directory of content
CONTENT_PATH = "/mydev/cosi166b"

# Copyright string
COPYRIGHT_STRING = "Copyright (2014-2020) R. Pito Salas, pitosalas@brandeis.edu"

# Course short name
COURSE_SHORT_NAME = "COSI 166b"
COURSE_LONG_NAME = "Capstone Project for Software Engineering"
COURSE_ABBREV = "166b"

# Schedule information. Note that Monday is day 0
LECTURES_SCHEDULE_CONFIG = ScheduleDef.new(
  first_day: "jan-14-2020",
  weekdays: [:tuesday, :thursday],
  start_times: ["15:30", "15:30"],
  end_times: ["16:50", "16:50"],
  start_time: "15:30",
  end_time: "16:50",
  number: 41,
  skips: ['feb-18-2020', 'feb-20-2020', 'mar-24-2020', 'apr-9-2020', 'apr-16-2020']
)

# Sections in the right hand margin of the page
# Bullet choices are :dash, :star, :plus, :minus
SECTION_CONFIG = [
  SectionDef.new("Introduction", "intro", hidden: false, type: :section, bullet: :star),
  SectionDef.new("Lectures", "lectures", type: :lecture, schedule: LECTURES_SCHEDULE_CONFIG, bullet: :dash),
  SectionDef.new("Background", "background", hidden: false, type: :section),
  SectionDef.new("Topics", "topics", hidden: true, type: :section),
  SectionDef.new("Extras", "extras", hidden: true, type: :section),
]

# Options are:
# bullet_style: css style for each bullet
STYLING_CONFIG = {bullet_style: "\"font-size: 60%; width: 10px; color: grey\""}
HOME_PAGE = "/content/intro/00_syllabus.md.erb"
HELPFUL_BOX = false
MENULINKS = [["TOC", "/content/intro/01_coursetoc.md/"],
             ["Project Outline", "/content/intro/20_project_roadmap.md/"],
             ["Deliverables", "/content/intro/03_term_project.md/"],
             ["Examples", "http://pitosalas.github.io/brandeisprojects/"]].freeze