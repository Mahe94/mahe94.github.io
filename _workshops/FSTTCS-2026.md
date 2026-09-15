---
layout: default
title: "Recent Trends in Cryptography"
permalink: /workshops/FSTTCS-2026/
hide_header: true
flush_top: true
---

<style>
/* =========================================================
   Recent Trends in Cryptography — Workshop Page
   Styles are scoped to .rtc-workshop to avoid interfering
   with the rest of the Jekyll website.
   ========================================================= */

.rtc-workshop {
  --rtc-text: #172033;
  --rtc-muted: #687386;
  --rtc-accent: #173f68;
  --rtc-accent-light: #eaf1f7;
  --rtc-bg: #ffffff;
  --rtc-soft-bg: #f7f8fa;
  --rtc-border: #e3e7ec;

  color: var(--rtc-text);
  font-size: 17px;
  line-height: 1.65;
}

/* Remove theme's default page title if it displays one */
.rtc-workshop .rtc-hidden {
  display: none;
}

.rtc-page-layout {
  position: relative;
  display: grid;
  grid-template-areas: "content";
  margin: 0 calc(50% - 50vw);
}

.rtc-main {
  grid-area: content;
  width: min(100%, 1400px);
  margin: 0 auto;
  min-width: 0;
}

.rtc-section {
  scroll-margin-top: 1.5rem;
}

.rtc-sidebar {
  grid-area: content;
  justify-self: start;
  align-self: start;
  display: block;
  width: 190px;
  margin-top: 4.5rem;
  margin-left: calc(50vw + 430px);
  padding-right: 0;
  position: sticky;
  top: 1.5rem;
  z-index: 2;
}

.rtc-sidebar-inner {
  border-left: 1px solid var(--rtc-border);
  padding-left: 1rem;
}

.rtc-sidebar-nav {
  display: flex;
  flex-direction: column;
  gap: 0.55rem;
}

.rtc-sidebar-nav a {
  color: var(--rtc-muted);
  font-size: 0.95rem;
  line-height: 1.4;
  text-decoration: none !important;
}

.rtc-sidebar-nav a:hover,
.rtc-sidebar-nav a:focus-visible {
  color: var(--rtc-accent);
  text-decoration: none !important;
}

.rtc-sidebar-nav a:focus-visible {
  outline: 2px solid var(--rtc-accent);
  outline-offset: 4px;
}

/* ---------- Hero ---------- */

.rtc-hero {
  position: relative;
  overflow: hidden;
  padding: 1.6rem 0.75rem 2rem;
  margin: 0 calc(50% - 50vw);
  text-align: left;
  background: #171c1b;
  color: #f5f6f2;
  letter-spacing: 0;
  isolation: isolate;
}

.rtc-hero::before {
  position: absolute;
  inset: 0;
  z-index: -1;
  content: "";
  background: url("{{ '/assets/img/fsttcs-2026-lattice.jpg' | relative_url }}") center / cover no-repeat;
  opacity: 0.55;
  pointer-events: none;
}

.rtc-hero-inner {
  position: relative;
  max-width: 1400px;
  margin: 0 auto;
}

.rtc-hero-context {
  display: flex;
  align-items: center;
  flex-wrap: wrap;
  gap: 0.5rem 1.25rem;
  margin-bottom: 1.6rem;
  color: #d0d7d2;
  font-size: 0.875rem;
  line-height: 1.5;
}

.rtc-hero .rtc-hero-conference {
  padding-left: 0.85rem;
  border-left: 3px solid #b6d99c;
  color: #f5f6f2;
  font-size: 1rem;
  font-weight: 700;
  text-decoration: none;
}

.rtc-hero .rtc-hero-conference:hover {
  color: #b6d99c;
  text-decoration: underline;
  text-underline-offset: 0.25em;
}

.rtc-hero .rtc-hero-conference:focus-visible {
  outline: 2px solid #b6d99c;
  outline-offset: 5px;
}

.rtc-hero h1 {
  margin: 0;
  color: #f5f6f2;
  font-family: Georgia, "Times New Roman", serif;
  font-size: 4.68rem;
  font-weight: 400;
  line-height: 1.1;
  letter-spacing: 0;
}

.rtc-hero-title-lead {
  display: block;
  margin-bottom: 0.35rem;
  font-size: 3rem;
}

.rtc-hero-title-subject {
  display: block;
  color: #b6d99c;
}

.rtc-hero .rtc-hero-description {
  max-width: 470px;
  margin: 1.5rem 0 0;
  color: #d0d7d2;
  font-size: 1.0625rem;
  line-height: 1.65;
}

.rtc-hero-meta {
  display: flex;
  gap: 2.5rem;
  flex-wrap: wrap;
  width: fit-content;
  max-width: 100%;
  margin-top: 1.5rem;
  padding-top: 1rem;
  border-top: 1px solid #626f65;
}

.rtc-hero .rtc-meta-item {
  min-width: 0;
}

.rtc-hero .rtc-meta-label {
  display: block;
  margin-bottom: 0.4rem;
  color: #c0c9c2;
  font-size: 0.8125rem;
  font-weight: 600;
}

.rtc-hero .rtc-meta-value {
  display: block;
  color: #f5f6f2;
  font-size: 1.25rem;
  font-weight: 600;
  line-height: 1.4;
}


/* ---------- General sections ---------- */

.rtc-section {
  max-width: 1050px;
  margin: 0;
  padding: 3.15rem 0.75rem;
}

.rtc-section + .rtc-section {
  border-top: 1px solid var(--rtc-border);
}

.rtc-section-header {
  max-width: 750px;
  margin-bottom: 2.4rem;
}

.rtc-section h2 {
  margin: 0 0 1rem;
  color: var(--rtc-text);
  font-size: clamp(1.8rem, 3vw, 2.5rem);
  font-weight: 650;
  letter-spacing: -0.02em;
}

.rtc-section-intro {
  color: var(--rtc-muted);
  font-size: 1.05rem;
}


/* ---------- Placeholder ---------- */

.rtc-placeholder {
  color: var(--rtc-muted);
  font-style: italic;
}

.rtc-placeholder-box {
  padding: 1.5rem;
  border: 1px dashed #b9c2cc;
  border-radius: 8px;
  background: var(--rtc-soft-bg);
  color: var(--rtc-muted);
}


/* ---------- Information cards ---------- */

.rtc-info-grid {
  display: grid;
  grid-template-columns: repeat(3, minmax(0, 1fr));
  gap: 1.2rem;
}

.rtc-info-card {
  padding: 1.6rem;
  border: 1px solid var(--rtc-border);
  border-radius: 8px;
  background: var(--rtc-bg);
}

.rtc-info-label {
  margin-bottom: 0.4rem;
  color: var(--rtc-accent);
  font-size: 0.77rem;
  font-weight: 700;
  letter-spacing: 0.08em;
  text-transform: uppercase;
}

.rtc-info-value {
  font-size: 1.02rem;
}


/* ---------- Speakers ---------- */

.rtc-speaker-grid {
  display: grid;
  grid-template-columns: repeat(4, minmax(0, 1fr));
  gap: 1.4rem;
}

.rtc-speaker {
  display: block;
  min-height: 190px;
  padding: 1.6rem;
  border: 1px solid var(--rtc-border);
  border-radius: 8px;
  background: white;
  color: inherit;
  text-decoration: none !important;
  transition: border-color 0.2s ease, box-shadow 0.2s ease, transform 0.2s ease;
}

.rtc-speaker:hover,
.rtc-organiser:hover {
  border-color: rgba(23, 63, 104, 0.45);
  box-shadow: 0 14px 30px rgba(23, 63, 104, 0.12);
  color: inherit;
  text-decoration: none !important;
  transform: translateY(-2px);
}

.rtc-speaker-photo,
.rtc-organiser-photo {
  display: flex;
  align-items: center;
  justify-content: center;
  aspect-ratio: 1 / 1;
  margin-bottom: 1.2rem;
  border: 1px dashed #b9c2cc;
  border-radius: 8px;
  background: var(--rtc-soft-bg);
  color: var(--rtc-muted);
  font-size: 0.82rem;
  font-style: italic;
  text-align: center;
}

.rtc-speaker-photo img,
.rtc-organiser-photo img {
  width: 100%;
  height: 100%;
  border-radius: 8px;
  object-fit: cover;
}

.rtc-speaker h3 {
  margin: 0 0 0.35rem;
  color: var(--rtc-text);
  font-size: 1.2rem;
}

.rtc-speaker-affiliation {
  color: var(--rtc-muted);
  font-size: 0.93rem;
}


/* ---------- Programme ---------- */

.rtc-programme {
  border-top: 1px solid var(--rtc-border);
}

.rtc-programme-day {
  padding: 1.6rem 0 0.6rem;
  border-bottom: 1px solid var(--rtc-border);
  color: var(--rtc-text);
  font-size: 1.25rem;
  font-weight: 700;
}

.rtc-programme-row {
  display: grid;
  grid-template-columns: 130px 1fr;
  gap: 1.5rem;
  padding: 1.25rem 0;
  border-bottom: 1px solid var(--rtc-border);
}

.rtc-programme-break {
  background: var(--rtc-soft-bg);
}

.rtc-programme-break .rtc-programme-title {
  color: var(--rtc-muted);
}

.rtc-programme-time {
  color: var(--rtc-accent);
  font-weight: 650;
}

.rtc-programme-title {
  font-weight: 600;
}

.rtc-abstract {
  margin-top: 0.8rem;
}

.rtc-abstract summary {
  display: inline-flex;
  align-items: center;
  gap: 0.35rem;
  color: var(--rtc-accent);
  cursor: pointer;
  font-size: 0.92rem;
  font-weight: 650;
  list-style: none;
}

.rtc-abstract summary::-webkit-details-marker {
  display: none;
}

.rtc-abstract summary::before {
  display: inline-block;
  width: 0;
  height: 0;
  border-top: 0.32rem solid transparent;
  border-bottom: 0.32rem solid transparent;
  border-left: 0.48rem solid var(--rtc-accent);
  content: "";
  transition: transform 0.2s ease;
}

.rtc-abstract[open] summary::before {
  transform: rotate(90deg);
}

.rtc-abstract-content {
  margin-top: 0.65rem;
  padding: 0.85rem 1rem;
  border-left: 3px solid var(--rtc-accent);
  background: var(--rtc-soft-bg);
  color: var(--rtc-muted);
}

.rtc-abstract-content p {
  margin: 0;
}


/* ---------- Organisers ---------- */

.rtc-organiser-grid {
  display: grid;
  grid-template-columns: repeat(4, minmax(0, 1fr));
  gap: 1.5rem;
}

.rtc-organiser {
  display: block;
  padding: 2rem;
  border: 1px solid transparent;
  border-radius: 8px;
  background: var(--rtc-soft-bg);
  color: inherit;
  text-decoration: none !important;
  transition: border-color 0.2s ease, box-shadow 0.2s ease, transform 0.2s ease;
}

.rtc-organiser h3 {
  margin: 0 0 0.3rem;
  color: var(--rtc-text);
  font-size: 1.35rem;
}

.rtc-organiser h3.rtc-organiser-name-long {
  font-size: 1.1rem;
}

.rtc-organiser-role {
  margin-bottom: 0.8rem;
  color: var(--rtc-accent);
  font-size: 0.88rem;
  font-weight: 650;
  text-transform: uppercase;
  letter-spacing: 0.05em;
}

.rtc-organiser-affiliation {
  color: var(--rtc-muted);
}


/* ---------- Registration ---------- */

.rtc-registration {
  padding: 3rem;
  border-radius: 10px;
  background: var(--rtc-accent-light);
}

.rtc-button {
  display: inline-block;
  margin-top: 1.2rem;
  padding: 0.8rem 1.4rem;
  border-radius: 5px;
  background: var(--rtc-accent);
  color: white !important;
  font-weight: 600;
  text-decoration: none !important;
}

.rtc-button:hover {
  opacity: 0.9;
}


/* ---------- Venue ---------- */

.rtc-venue-grid {
  display: grid;
  gap: 1.5rem;
}

.rtc-venue-details {
  padding: 1.5rem;
  border: 1px solid var(--rtc-border);
  border-radius: 8px;
  background: var(--rtc-bg);
}

.rtc-venue-details h3 {
  margin: 0 0 0.45rem;
  color: var(--rtc-text);
  font-size: 1.15rem;
  font-weight: 700;
}

.rtc-venue-details p {
  margin-bottom: 1.2rem;
}

.rtc-venue-details ul {
  margin: 0 0 1.2rem;
  padding-left: 1.2rem;
}

.rtc-map {
  min-height: 420px;
  overflow: hidden;
  border: 1px solid var(--rtc-border);
  border-radius: 8px;
  background: var(--rtc-soft-bg);
}

.rtc-map iframe {
  display: block;
  width: 100%;
  height: 100%;
  min-height: 420px;
  border: 0;
}


/* ---------- Sponsors ---------- */

.rtc-sponsor-grid {
  display: grid;
  grid-template-columns: minmax(0, 260px);
  gap: 1.2rem;
}

.rtc-sponsor {
  display: flex;
  align-items: center;
  gap: 1rem;
  min-height: 104px;
  padding: 1.4rem;
  border: 1px solid var(--rtc-border);
  border-radius: 8px;
  background: white;
  color: inherit;
  text-decoration: none !important;
  transition: border-color 0.2s ease, box-shadow 0.2s ease, transform 0.2s ease;
}

.rtc-sponsor:hover {
  border-color: rgba(23, 63, 104, 0.45);
  box-shadow: 0 14px 30px rgba(23, 63, 104, 0.12);
  color: inherit;
  text-decoration: none !important;
  transform: translateY(-2px);
}

.rtc-sponsor-logo {
  display: grid;
  place-items: center;
  flex: 0 0 72px;
  width: 72px;
  height: 72px;
  border: 1px solid var(--rtc-border);
  border-radius: 8px;
  background: #ffffff;
}

.rtc-sponsor-logo img {
  display: block;
  max-width: 58px;
  max-height: 58px;
  object-fit: contain;
}

.rtc-sponsor-name {
  color: var(--rtc-text);
  font-size: 1.15rem;
  font-weight: 700;
  line-height: 1.3;
}


/* ---------- Footer ---------- */

.rtc-footer {
  max-width: 1050px;
  margin: 0 auto;
  padding: 2rem 1.5rem 4rem;
  border-top: 1px solid var(--rtc-border);
  color: var(--rtc-muted);
  font-size: 0.9rem;
}


/* ---------- Mobile ---------- */

@media (max-width: 1259.98px) {
  .rtc-sidebar {
    display: none;
  }
}

@media (max-width: 800px) {
  .rtc-info-grid,
  .rtc-speaker-grid {
    grid-template-columns: 1fr 1fr;
  }

  .rtc-organiser-grid {
    grid-template-columns: 1fr;
  }
}

@media (max-width: 550px) {
  .rtc-hero {
    padding: 1.4rem 1.1rem 1.7rem;
  }

  .rtc-hero::before {
    background-position: 65% center;
    opacity: 0.22;
  }

  .rtc-hero-context {
    align-items: flex-start;
    flex-direction: column;
    gap: 0.5rem;
    margin-bottom: 1.4rem;
  }

  .rtc-hero h1 {
    font-size: 2.6rem;
  }

  .rtc-hero-title-lead {
    font-size: 2rem;
    margin-bottom: 0.5rem;
  }

  .rtc-hero .rtc-hero-description {
    font-size: 1rem;
    max-width: 320px;
  }

  .rtc-hero-meta {
    width: 100%;
    margin-top: 1.25rem;
    gap: 0.85rem;
    flex-direction: column;
  }

  .rtc-hero .rtc-meta-value {
    font-size: 1.125rem;
  }

  .rtc-section {
    padding: 2.24rem 1.1rem;
  }

  .rtc-info-grid,
  .rtc-speaker-grid {
    grid-template-columns: 1fr;
  }

  .rtc-programme-row {
    grid-template-columns: 1fr;
    gap: 0.25rem;
  }

  .rtc-registration {
    padding: 2rem 1.4rem;
  }

  .rtc-map,
  .rtc-map iframe {
    min-height: 320px;
  }
}
</style>


<div class="rtc-workshop">

  <!-- =====================================================
       HERO
       ===================================================== -->

  <section class="rtc-hero" aria-labelledby="rtc-workshop-title">
    <div class="rtc-hero-inner">

      <div class="rtc-hero-context">
        <a class="rtc-hero-conference" href="https://www.fsttcs.org.in/2026/">FSTTCS 2026</a>
        Post-conference workshop
      </div>

      <h1 id="rtc-workshop-title"><span class="rtc-hero-title-subject">Recent Trends in Cryptography</span></h1>

      <!-- <p class="rtc-hero-description">Two days of ideas, techniques, and conversations shaping modern cryptography.</p> -->

      <div class="rtc-hero-meta">
        <div class="rtc-meta-item">
          <span class="rtc-meta-label">Date</span>
          <span class="rtc-meta-value"><time datetime="2026-12-19">December 19</time>&ndash;<time datetime="2026-12-20">20, 2026</time></span>
        </div>
        <div class="rtc-meta-item">
          <span class="rtc-meta-label">Venue</span>
          <span class="rtc-meta-value">IIT Delhi, India</span>
        </div>
      </div>

    </div>
  </section>

  <div class="rtc-page-layout">
    <main class="rtc-main">

  <!-- =====================================================
       OVERVIEW
       ===================================================== -->

  <section class="rtc-section" id="about-the-workshop">

    <div class="rtc-section-header">

      <h2>About the Workshop</h2>

    </div>

    <p>
      The workshop aims to brings together graduate students, postdoctoral researchers, early-career academics, senior researchers, and experts from across the cryptography community to discuss some of the most significant recent developments. The program will feature a combination of introductory and advanced lectures delivered by leading researchers, focusing on influential ideas, techniques, and results that have shaped the field, including work appearing in leading international conferences in cryptography and theoretical computer science over the past few years.
    </p>

  </section>


  <!-- =====================================================
       EVENT INFORMATION
       ===================================================== -->

  <!-- <section class="rtc-section">

    <div class="rtc-section-header">

      <h2>At a Glance</h2>

    </div>

    <div class="rtc-info-grid">

      <div class="rtc-info-card">
        <div class="rtc-info-label">Date</div>
        <div class="rtc-info-value rtc-placeholder">
          December 19-20, 2026
        </div>
      </div>

      <div class="rtc-info-card">
        <div class="rtc-info-label">Venue</div>
        <div class="rtc-info-value rtc-placeholder">
          IIT Delhi, India
        </div>
      </div>

      <div class="rtc-info-card">
        <div class="rtc-info-label">Time</div>
        <div class="rtc-info-value rtc-placeholder">
          [START TIME – END TIME]
        </div>
      </div>

    </div>

  </section> -->


  <!-- =====================================================
       THEMES
       ===================================================== -->

  <!-- <section class="rtc-section">

    <div class="rtc-section-header">

      <h2>Topics</h2>

      <p class="rtc-section-intro rtc-placeholder">
        [PLACEHOLDER: Short introduction to the themes covered by the
        workshop.]
      </p>

    </div>

    <div class="rtc-placeholder-box">
      [PLACEHOLDER: List the main cryptographic themes/topics here.]
    </div>

  </section> -->


  <!-- =====================================================
       ENTRY REQUIREMENTS
       ===================================================== -->

  <!-- <section class="rtc-section" id="entry-requirements">

    <div class="rtc-section-header">

      <h2>Entry Requirements</h2>

    </div>

    <p>
      This workshop is primarily intended for graduate students
      (Master's and PhD), postdoctoral researchers, and early-career
      academics. We also welcome other participants, including those
      from industry or with a general interest in recent developments
      in cryptography.
    </p>

    <p>
      Participants should have a solid foundation in undergraduate-level
      mathematics, particularly linear algebra, probability, and discrete
      mathematics. Prior experience across all areas covered by the
      workshop is not required, but familiarity with cryptography or
      related theoretical computer science topics will be helpful for
      getting the most out of the event.
    </p>

  </section> -->



  <!-- =====================================================
       SPEAKERS
       Mahesh and Venkata are organisers as well as speakers.
       Replace/add cards once the speaker list is finalized.
       ===================================================== -->

  <section class="rtc-section" id="speakers">

    <div class="rtc-section-header">

      <h2>Speakers</h2>

      <!-- <p class="rtc-section-intro rtc-placeholder">
        [PLACEHOLDER: Introductory sentence about the invited speakers.]
      </p> -->

    </div>

    <div class="rtc-speaker-grid">

      <a class="rtc-speaker" href="https://kabirtomer.github.io">
        <div class="rtc-speaker-photo">
          <img src="{{ '/assets/img/kabir.jpeg' | relative_url }}" alt="Kabir Tomer">
        </div>
        <h3>Kabir Tomer</h3>
        <div class="rtc-speaker-affiliation">
          University of Illinois Urbana-Champaign
        </div>
      </a>

      <a class="rtc-speaker" href="https://varunnkv.github.io">
        <div class="rtc-speaker-photo">
          <img src="{{ '/assets/img/varun.jpg' | relative_url }}" alt="Varun Narayanan">
        </div>
        <h3>Varun Narayanan</h3>
        <div class="rtc-speaker-affiliation">
          Chennai Mathematical Institute
        </div>
      </a>

      <a class="rtc-speaker" href="https://sruthisekar.in">
        <div class="rtc-speaker-photo">
          <img src="https://i0.wp.com/sruthisekar.in/wp-content/uploads/2026/07/white_background_photo-edited.png?resize=1100%2C1044&amp;ssl=1" alt="Sruthi Sekar">
        </div>
        <h3>Sruthi Sekar</h3>
        <div class="rtc-speaker-affiliation">
          Indian Institute of Technology Bombay
        </div>
      </a>

      <a class="rtc-speaker" href="https://yadav-anshu.github.io">
        <div class="rtc-speaker-photo">
          <img src="{{ '/assets/img/anshu.jpeg' | relative_url }}" alt="Anshu Yadav">
        </div>
        <h3>Anshu Yadav</h3>
        <div class="rtc-speaker-affiliation">
          Indian Institute of Technology Kanpur
        </div>
      </a>

      <a class="rtc-speaker" href="https://www.cse.iitb.ac.in/~ckamath/">
        <div class="rtc-speaker-photo">
          <img src="{{ '/assets/img/chethan.jpg' | relative_url }}" alt="Chethan Kamath">
        </div>
        <h3>Chethan Kamath</h3>
        <div class="rtc-speaker-affiliation">
          Indian Institute of Technology Bombay
        </div>
      </a>

      <a class="rtc-speaker" href="https://www.csa.iisc.ac.in/~chaya/">
        <div class="rtc-speaker-photo">
          <img src="{{ '/assets/img/chaya.jpg' | relative_url }}" alt="Chaya Ganesh">
        </div>
        <h3>Chaya Ganesh</h3>
        <div class="rtc-speaker-affiliation">
          Indian Institute of Science
        </div>
      </a>

      <a class="rtc-speaker" href="https://pratyay.net">
        <div class="rtc-speaker-photo">
          <img src="{{ '/assets/img/pratyay.png' | relative_url }}" alt="Pratyay Mukherjee">
        </div>
        <h3>Pratyay Mukherjee</h3>
        <div class="rtc-speaker-affiliation">
          Hashgraph
        </div>
      </a>

      <a class="rtc-speaker" href="#">
        <div class="rtc-speaker-photo">[SPEAKER PHOTO]</div>
        <h3 class="rtc-placeholder">[SPEAKER NAME]</h3>
        <div class="rtc-speaker-affiliation rtc-placeholder">
          [AFFILIATION]
        </div>
      </a>

    </div>

  </section>


  <!-- =====================================================
       PROGRAMME
       ===================================================== -->

  <section class="rtc-section" id="schedule">

    <div class="rtc-section-header">

      <h2>Schedule</h2>

      <!-- <p class="rtc-section-intro rtc-placeholder">
        [PLACEHOLDER: Programme details will be announced.]
      </p> -->

    </div>

    <p class="rtc-section-intro rtc-placeholder">
      Schedule will be announced soon.
    </p>

    {% comment %}
    <div class="rtc-programme">

      <div class="rtc-programme-day">
        Day 1: December 19, 2026
      </div>

      <div class="rtc-programme-row">
        <div class="rtc-programme-time">
          09:30–09:45
        </div>
        <div>
          <div class="rtc-programme-title">
            Opening Remarks
          </div>
        </div>
      </div>

      <div class="rtc-programme-row">
        <div class="rtc-programme-time">
          09:45–10:45
        </div>
        <div>
          <div class="rtc-programme-title">
            Pseudorandom Codes: Constructions and Limitations
          </div>
          <div>
            Mahesh Sreekumar Rajasree
          </div>
          <details class="rtc-abstract">
            <summary>Abstract</summary>
            <div class="rtc-abstract-content rtc-placeholder">
              <p>[PLACEHOLDER: Abstract covering pseudorandom codes, constructions, and limitations of building them.]</p>
            </div>
          </details>
          <details class="rtc-abstract rtc-bio">
            <summary>Bio</summary>
            <div class="rtc-abstract-content">
              <p>Mahesh Sreekumar Rajasree is a postdoctoral researcher at CISPA Helmholtz Center for Information Security, hosted by Prof. Nico Doettling. His research focuses on public-key cryptography and quantum cryptography. Previously, he was a Postdoctoral Fellow at IITD under the guidance of Prof. Venkata Koppula. He completed his PhD and MTech at IIT Kanpur under Prof. Manindra Agrawal.</p>
            </div>
          </details>
        </div>
      </div>

      <div class="rtc-programme-row rtc-programme-break">
        <div class="rtc-programme-time">
          10:45–11:15
        </div>
        <div>
          <div class="rtc-programme-title">
            Tea
          </div>
        </div>
      </div>

      <!-- <div class="rtc-programme-row">
        <div class="rtc-programme-time">
          11:15-12:15
        </div>
        <div>
          <div class="rtc-programme-title">
            Quantum Lower Bounds
          </div>
          <div>
            Kabir Tomer
          </div>
          <details class="rtc-abstract">
            <summary>Abstract</summary>
            <div class="rtc-abstract-content rtc-placeholder">
              <p>[PLACEHOLDER: Abstract.]</p>
            </div>
          </details>
          <details class="rtc-abstract rtc-bio">
            <summary>Bio</summary>
            <div class="rtc-abstract-content">
              <p>Kabir Tomer is a fourth-year PhD student at UIUC, advised by Dakshita Khurana. He is broadly interested in theoretical computer science, with research focusing on questions at the intersection of quantum computing and cryptography. Previously, he was an undergraduate at IIT Delhi advised by Venkata Koppula.</p>
            </div>
          </details>
        </div>
      </div> -->

      <div class="rtc-programme-row">
        <div class="rtc-programme-time">
          11:15–12:15
        </div>
        <div>
          <div class="rtc-programme-title rtc-placeholder">
            Talk 2
          </div>
          <div>
            Varun Narayanan
          </div>
          <details class="rtc-abstract">
            <summary>Abstract</summary>
            <div class="rtc-abstract-content rtc-placeholder">
              <p>[PLACEHOLDER: Abstract.]</p>
            </div>
          </details>
          <details class="rtc-abstract rtc-bio">
            <summary>Bio</summary>
            <div class="rtc-abstract-content">
              <p>Varun Narayanan is an assistant professor in Chennai Mathematical Institute. His research interests include secure multi-party computation, cryptography, and information theory. He was previously a postdoctoral research fellow at UCLA and Technion, and completed his PhD under Vinod Prabhakaran.</p>
            </div>
          </details>
        </div>
      </div>

      <div class="rtc-programme-row rtc-programme-break">
        <div class="rtc-programme-time">
          12:15–14:00
        </div>
        <div>
          <div class="rtc-programme-title">
            Lunch
          </div>
        </div>
      </div>

      <div class="rtc-programme-row">
        <div class="rtc-programme-time">
          14:00–15:00
        </div>
        <div>
          <div class="rtc-programme-title">
            CCA Encryption Schemes
          </div>
          <div>
            Venkata Koppula
          </div>
          <details class="rtc-abstract">
            <summary>Abstract</summary>
            <div class="rtc-abstract-content rtc-placeholder">
              <p>[PLACEHOLDER: Abstract.]</p>
            </div>
          </details>
          <details class="rtc-abstract rtc-bio">
            <summary>Bio</summary>
            <div class="rtc-abstract-content">
              <p>Venkata Koppula is an Assistant Professor in the Department of Computer Science and Engineering at IIT Delhi. His research interests are in theoretical cryptography, including both classical and quantum cryptography. Before joining IIT Delhi, he was a postdoctoral researcher at the Weizmann Institute of Science, hosted by Zvika Brakerski. He obtained his PhD from the University of Texas at Austin, advised by Brent Waters.</p>
            </div>
          </details>
        </div>
      </div>

      <div class="rtc-programme-row rtc-programme-break">
        <div class="rtc-programme-time">
          15:00–15:30
        </div>
        <div>
          <div class="rtc-programme-title">
            Tea
          </div>
        </div>
      </div>

      <div class="rtc-programme-row">
        <div class="rtc-programme-time">
          15:30–16:30
        </div>
        <div>
          <div class="rtc-programme-title">
            SNARKs
          </div>
          <div>
            Sruthi Sekar
          </div>
          <details class="rtc-abstract">
            <summary>Abstract</summary>
            <div class="rtc-abstract-content rtc-placeholder">
              <p>[PLACEHOLDER: Abstract.]</p>
            </div>
          </details>
          <details class="rtc-abstract rtc-bio">
            <summary>Bio</summary>
            <div class="rtc-abstract-content">
              <p>Sruthi Sekar is an Assistant Professor in the Department of Computer Science and Engineering at IIT Bombay and a Principal Investigator at IITB Trust Lab. Her research interests are in cryptography and theoretical computer science. Before joining IIT Bombay, she was a postdoctoral researcher at UC Berkeley, hosted by Sanjam Garg. She completed her PhD at the Indian Institute of Science, advised by Bhavana Kanukurthi and Manjunath Krishnapur.</p>
            </div>
          </details>
        </div>
      </div>

      <div class="rtc-programme-row">
        <div class="rtc-programme-time">
          16:30–17:30
        </div>
        <div>
          <div class="rtc-programme-title">
            On the Variants of LWE
          </div>
          <div>
            Anshu Yadav
          </div>
          <details class="rtc-abstract">
            <summary>Abstract</summary>
            <div class="rtc-abstract-content rtc-placeholder">
              <p>[PLACEHOLDER: Abstract.]</p>
            </div>
          </details>
          <details class="rtc-abstract rtc-bio">
            <summary>Bio</summary>
            <div class="rtc-abstract-content">
              <p>Anshu Yadav is an Assistant Professor in the Computer Science and Engineering Department at IIT Kanpur. Her research interests are in theoretical cryptography, especially constructions of advanced cryptographic primitives under various assumptions. Before joining IIT Kanpur, she was a postdoctoral researcher in Krzysztof Pietrzak's group at the Institute of Science and Technology Austria. She completed her PhD at IIT Madras.</p>
            </div>
          </details>
        </div>
      </div>

      <div class="rtc-programme-day">
        Day 2: December 20, 2026
      </div>

      <div class="rtc-programme-row">
        <div class="rtc-programme-time">
          09:45–10:45
        </div>
        <div>
          <div class="rtc-programme-title rtc-placeholder">
            Talk 6
          </div>
          <div>
            Chethan Kamath
          </div>
          <details class="rtc-abstract">
            <summary>Abstract</summary>
            <div class="rtc-abstract-content rtc-placeholder">
              <p>[PLACEHOLDER: Abstract.]</p>
            </div>
          </details>
          <details class="rtc-abstract rtc-bio">
            <summary>Bio</summary>
            <div class="rtc-abstract-content">
              <p>Chethan Kamath is an Assistant Professor in the Department of Computer Science and Engineering at IIT Bombay, where he is a member of the Theory Group and Trust Lab. His primary research area is cryptography, particularly its foundations, with broader interests in theoretical computer science.</p>
            </div>
          </details>
        </div>
      </div>

      <div class="rtc-programme-row rtc-programme-break">
        <div class="rtc-programme-time">
          10:45–11:15
        </div>
        <div>
          <div class="rtc-programme-title">
            Tea
          </div>
        </div>
      </div>

      <div class="rtc-programme-row">
        <div class="rtc-programme-time">
          11:15–12:15
        </div>
        <div>
          <div class="rtc-programme-title rtc-placeholder">
            Talk 7
          </div>
          <div>
            Chaya Ganesh
          </div>
          <details class="rtc-abstract">
            <summary>Abstract</summary>
            <div class="rtc-abstract-content rtc-placeholder">
              <p>[PLACEHOLDER: Abstract.]</p>
            </div>
          </details>
          <details class="rtc-abstract rtc-bio">
            <summary>Bio</summary>
            <div class="rtc-abstract-content">
              <p>Chaya Ganesh is an Associate Professor in the Department of Computer Science and Automation at the Indian Institute of Science. Her research interests are in cryptography and security. Before joining IISc, she was a postdoctoral researcher in the Crypto Group at Aarhus University, and she received her PhD from NYU's Courant Institute of Mathematical Sciences.</p>
            </div>
          </details>
        </div>
      </div>

      <div class="rtc-programme-row rtc-programme-break">
        <div class="rtc-programme-time">
          12:15–14:00
        </div>
        <div>
          <div class="rtc-programme-title">
            Lunch
          </div>
        </div>
      </div>

      <div class="rtc-programme-row">
        <div class="rtc-programme-time">
          14:00–15:00
        </div>
        <div>
          <div class="rtc-programme-title rtc-placeholder">
            Talk 8
          </div>
          <div>
            Pratyay Mukherjee
          </div>
          <details class="rtc-abstract">
            <summary>Abstract</summary>
            <div class="rtc-abstract-content rtc-placeholder">
              <p>[PLACEHOLDER: Abstract.]</p>
            </div>
          </details>
          <details class="rtc-abstract rtc-bio">
            <summary>Bio</summary>
            <div class="rtc-abstract-content">
              <p>Pratyay Mukherjee is a Principal Researcher at Hashgraph, a Visiting Scientist and Guest Faculty member at ISI Kolkata, and the Founder and Director of AlgoBengal Research Labs. His research encompasses cryptography and security, with recent work focusing on applications of cryptography in payments and blockchain.</p>
            </div>
          </details>
        </div>
      </div>

      <div class="rtc-programme-row rtc-programme-break">
        <div class="rtc-programme-time">
          15:00–15:30
        </div>
        <div>
          <div class="rtc-programme-title">
            Tea
          </div>
        </div>
      </div>

      <div class="rtc-programme-row">
        <div class="rtc-programme-time">
          15:30–16:30
        </div>
        <div>
          <div class="rtc-programme-title rtc-placeholder">
            Talk 9
          </div>
          <div class="rtc-placeholder">
            [SPEAKER / TITLE]
          </div>
          <details class="rtc-abstract">
            <summary>Abstract</summary>
            <div class="rtc-abstract-content rtc-placeholder">
              <p>[PLACEHOLDER: Abstract.]</p>
            </div>
          </details>
          <details class="rtc-abstract rtc-bio">
            <summary>Bio</summary>
            <div class="rtc-abstract-content rtc-placeholder">
              <p>[PLACEHOLDER: Speaker bio.]</p>
            </div>
          </details>
        </div>
      </div>

      <div class="rtc-programme-row">
        <div class="rtc-programme-time">
          16:30–17:30
        </div>
        <div>
          <div class="rtc-programme-title rtc-placeholder">
            Talk 10
          </div>
          <div class="rtc-placeholder">
            [SPEAKER / TITLE]
          </div>
          <details class="rtc-abstract">
            <summary>Abstract</summary>
            <div class="rtc-abstract-content rtc-placeholder">
              <p>[PLACEHOLDER: Abstract.]</p>
            </div>
          </details>
          <details class="rtc-abstract rtc-bio">
            <summary>Bio</summary>
            <div class="rtc-abstract-content rtc-placeholder">
              <p>[PLACEHOLDER: Speaker bio.]</p>
            </div>
          </details>
        </div>
      </div>

      <div class="rtc-programme-row">
        <div class="rtc-programme-time">
          17:30–17:45
        </div>
        <div>
          <div class="rtc-programme-title">
            Closing Remarks
          </div>
        </div>
      </div>

    </div>
    {% endcomment %}

  </section>


  <!-- =====================================================
       ORGANISERS
       ===================================================== -->

  <section class="rtc-section" id="organisers">

    <div class="rtc-section-header">

      <h2>Organisers</h2>

    </div>

    <div class="rtc-organiser-grid">

      <a class="rtc-organiser" href="https://web.iitd.ac.in/~kvenkata/">

        <div class="rtc-organiser-photo">
          <img src="{{ '/assets/img/kvenkata.jpg' | relative_url }}" alt="Venkata Koppula">
        </div>

        <h3>Venkata Koppula</h3>

        <div class="rtc-organiser-role">
          Organiser &amp; Speaker
        </div>

        <div class="rtc-organiser-affiliation">
          Indian Institute of Technology, Delhi
        </div>

      </a>

      <a class="rtc-organiser" href="{{ '/' | relative_url }}">

        <div class="rtc-organiser-photo">
          <img src="{{ '/assets/img/mahe.jpeg' | relative_url }}" alt="Mahesh Sreekumar Rajasree">
        </div>

        <h3 class="rtc-organiser-name-long">Mahesh Sreekumar Rajasree</h3>

        <div class="rtc-organiser-role">
          Organiser &amp; Speaker
        </div>

        <div class="rtc-organiser-affiliation">
          CISPA Helmholtz, Germany
        </div>

      </a>

    </div>

  </section>



  <!-- =====================================================
       REGISTRATION
       ===================================================== -->

  <section class="rtc-section" id="participate">

    <div class="rtc-registration">

      <h2>Participate</h2>

      <p class="rtc-placeholder">
        [PLACEHOLDER: Registration information, eligibility,
        registration deadline, fees if any, and other instructions.]
      </p>

      <!-- Replace # with the registration URL -->
      <a class="rtc-button" href="#">
        Registration Coming Soon
      </a>

    </div>

  </section>


  <!-- =====================================================
       VENUE & TRAVEL
       ===================================================== -->

  <section class="rtc-section" id="venue-travel">

    <div class="rtc-section-header">

      <h2>Venue &amp; Travel</h2>

    </div>

    <div class="rtc-venue-grid">

      <div class="rtc-map">
        <iframe
          src="https://www.google.com/maps?q=Bharti%20Building%20IIT%20Delhi&output=embed"
          loading="lazy"
          referrerpolicy="no-referrer-when-downgrade"
          title="Map showing Bharti Building, IIT Delhi">
        </iframe>
      </div>

      <div class="rtc-venue-details">
        <h3>Venue</h3>
        <p>
          The workshop is part of FSTTCS 2026, which will be held at
          Indian Institute of Technology Delhi, Hauz Khas, New Delhi
          110016, India. The workshop venue is Bharti Building, IIT Delhi.
        </p>

        <h3>Getting There</h3>
        <ul>
          <li>
            <strong>By air:</strong> Indira Gandhi International Airport
            (DEL) is about 10-12 km from IIT Delhi. Prepaid taxis and
            app-based cabs are available from the airport. From Terminal 1,
            the Delhi Metro Magenta Line connects to IIT Delhi Metro Station;
            from Terminal 3, use the airport shuttle to Terminal 1 or take a
            cab directly.
          </li>
          <li>
            <strong>By train:</strong> New Delhi Railway Station and Hazrat
            Nizamuddin Railway Station are both about 14-15 km from IIT
            Delhi. Taxis and app-based cabs are available from the stations.
            By metro, travel towards Hauz Khas/IIT Delhi and continue to IIT
            Delhi Metro Station on the Magenta Line.
          </li>
          <li>
            <strong>By metro:</strong> IIT Delhi Metro Station is on the
            Magenta Line and is the closest metro stop for the campus.
          </li>
        </ul>

        <h3>Accommodation</h3>
        <p class="rtc-placeholder">
          [PLACEHOLDER: Accommodation information will be updated.]
        </p>
      </div>

    </div>

  </section>


  <!-- =====================================================
       CONTACT
       ===================================================== -->

  <section class="rtc-section" id="questions">

    <div class="rtc-section-header">

      <h2>Questions?</h2>

    </div>

    <div class="rtc-placeholder-box">
      [PLACEHOLDER: Contact email and other relevant information.]
    </div>

  </section>


  <!-- =====================================================
       SPONSORS
       ===================================================== -->

  <section class="rtc-section" id="sponsors">

    <div class="rtc-section-header">

      <h2>Sponsors</h2>

    </div>

    <div class="rtc-sponsor-grid">

      <a class="rtc-sponsor" href="https://trustlab.iitb.ac.in">
        <span class="rtc-sponsor-logo">
          <img
            src="https://trustlab.iitb.ac.in/wp-content/uploads/2022/08/logo-TL-short.png"
            alt="Trust Lab">
        </span>
        <span class="rtc-sponsor-name">Trust Lab</span>
      </a>

    </div>

  </section>

    </main>

    <aside class="rtc-sidebar" aria-label="Workshop sections">
      <div class="rtc-sidebar-inner">
        <nav class="rtc-sidebar-nav">
          <a href="#about-the-workshop">About the Workshop</a>
          <a href="#entry-requirements">Entry Requirements</a>
          <a href="#speakers">Speakers</a>
          <a href="#schedule">Schedule</a>
          <a href="#organisers">Organisers</a>
          <a href="#participate">Participate</a>
          <a href="#venue-travel">Venue &amp; Travel</a>
          <a href="#questions">Questions?</a>
          <a href="#sponsors">Sponsors</a>
        </nav>
      </div>
    </aside>
  </div>

</div>
