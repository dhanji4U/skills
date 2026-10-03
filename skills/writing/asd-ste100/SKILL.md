---
name: asd-ste100
description: |
  Apply ASD-STE100 (Simplified Technical English) rules to technical copy, procedural steps,
  and agent outputs. Enforces sentence limits (20 words for procedures, 25 for descriptions),
  active voice, controlled dictionary mappings, and single-instruction steps.
license: MIT
metadata:
  version: "1.0.0"
  source_repo: "ASD-STE100"
  sources:
    - "ASD-STE100 Specification (AeroSpace and Defence Industries Association of Europe)"
    - "Simplified Technical English Maintenance Group (STEMG)"
---

# ASD-STE100: Simplified Technical English Specification

Apply ASD-STE100 rules to eliminate ambiguity, passive phrasing, and reading fatigue in agent outputs, procedures, and technical documentation.

---

## Why ASD-STE100 Fits Agent Outputs

Autonomous language models default to verbose sentences, passive phrasing, and stacked qualifiers. ASD-STE100 was developed in 1986 by the European aerospace industry to prevent technicians from making maintenance errors caused by complex text.

Applying ASD-STE100 to model outputs removes cognitive load:
* Procedures become direct commands.
* Sentences remain short and parseable.
* Ambiguous synonyms collapse into approved terms.
* Passive voice disappears from operational steps.

---

## Part 1: Core Writing Rules

### 1. Sentence Word Counts
* **Procedural sentences:** Maximum 20 words per sentence.
* **Descriptive sentences:** Maximum 25 words per sentence.
* Count every word, including articles, prepositions, and numbers.

### 2. Paragraph Limits
* Maximum 6 sentences per paragraph.
* Address exactly one topic per paragraph.

### 3. One Instruction Per Step
* State only one action in each procedural sentence.
* Exception: Combine actions only when they must happen simultaneously.

### 4. Noun Clusters
* Maximum 3 consecutive nouns in any noun phrase.
* Break up longer clusters with prepositions or hyphenated relationships.
* *Non-compliant:* `aircraft hydraulic system reservoir fluid replenishment procedure`
* *Compliant:* `procedure to fill the hydraulic reservoir of the aircraft`

### 5. Approved Verb Forms
Use only these six verb forms:
1. **Command (Imperative):** `Close the valve.`
2. **Simple present:** `The valve closes.`
3. **Simple past:** `The valve closed.`
4. **Simple future:** `The valve will close.`
5. **Infinitive:** `Turn the switch to close it.`
6. **Past participle as adjective:** `The closed valve stops flow.`

Disapproved verb forms:
* **Progressive (`-ing`):** Do not write `The valve is closing.` Write `The valve closes.` (Only permitted in established technical names, e.g. `landing gear`).
* **Perfect tenses:** Do not write `The valve has closed.` Write `The valve closed.`
* **Passive voice in procedures:** Do not write `The valve must be closed.` Write `Close the valve.`

### 6. Articles and Pronouns
* Do not drop articles to save space. Always include `the`, `a`, `an`, and `this`.
* *Non-compliant:* `Remove cover. Inspect seal.`
* *Compliant:* `Remove the cover. Inspect the seal.`

---

## Part 2: Controlled Dictionary

ASD-STE100 specifies one approved meaning and one part of speech for every word. Use the approved alternative for common unapproved words:

| Unapproved Word | Part of Speech | Approved Alternative | Example Rewritten |
|:---|:---|:---|:---|
| `utilize` | verb | `USE` | Use a torque wrench. |
| `commence` | verb | `START` | Start the pump. |
| `ensure` | verb | `MAKE SURE` | Make sure that the switch is on. |
| `prior to` | preposition | `BEFORE` | Before you start the engine. |
| `replenish` | verb | `FILL` | Fill the reservoir. |
| `terminate` | verb | `STOP` / `END` | Stop the test. |
| `approximately` | adverb | `ABOUT` | Wait about 10 minutes. |
| `in order to` | conjunction | `TO` | Remove the panel to get access. |
| `close` (adj) | adjective | `NEAR` | Put the tool near the panel. (`CLOSE` is only a verb). |
| `perform` | verb | `DO` | Do this step carefully. |

---

## Step-by-Step Rewriting Protocol

Follow this sequence when converting raw or generated text to ASD-STE100:

1. **Classify Sentence Intent:** Identify whether each sentence is procedural (an instruction) or descriptive (an explanation).
2. **Convert Verbs to Active Imperative:** In procedural sentences, remove modal verbs (`must`, `should`, `is to be`) and lead directly with the imperative verb.
3. **Enforce Sentence Word Limits:** Count words. If a procedural sentence exceeds 20 words or a descriptive sentence exceeds 25 words, split the sentence at conjunctions.
4. **Replace Controlled Dictionary Terms:** Replace unapproved terms (`ensure`, `prior to`, `utilize`) with approved equivalents (`make sure`, `before`, `use`).
5. **Break Noun Clusters:** Identify sequences of 4 or more nouns and restructure them.
6. **Check Progressive Forms:** Replace `-ing` verbs with simple tenses.

---

## Transformation Examples

### Example 1: Procedural Instruction
* **Original:**
  > "It is imperative that the operator ensures the hydraulic reservoir is replenished prior to commencing operation."
* **ASD-STE100 Compliant:**
  > "Make sure that the hydraulic reservoir is full before you start the operation."
* **Rules Applied:**
  * Replaced `ensures` with `make sure`.
  * Replaced `replenished` with `full`.
  * Replaced `prior to` with `before`.
  * Replaced `commencing` with `start`.
  * Length reduced from 18 words of passive phrasing to 13 direct words.

### Example 2: Safety Warning
* **Original:**
  > "Touching the hot brake unit prior to sufficient cooling time being elapsed could potentially cause severe skin burns."
* **ASD-STE100 Compliant:**
  > "WARNING: Do not touch the brake unit until it is cool. Hot parts cause injury."
* **Rules Applied:**
  * Separated command from risk.
  * Formatted clear initial command followed by consequences.
  * Removed progressive hedging (`being elapsed`, `could potentially cause`).

---

## Completion Checklist

Before finalizing any technical step or summary under ASD-STE100:
1. [ ] Every procedural sentence has 20 words or fewer.
2. [ ] Every descriptive sentence has 25 words or fewer.
3. [ ] All procedural instructions use the imperative active voice.
4. [ ] No progressive (`-ing`) or perfect verb tenses appear.
5. [ ] No unapproved dictionary words remain (`ensure`, `utilize`, `prior to`).
6. [ ] Noun clusters have at most 3 consecutive nouns.
7. [ ] Exactly one instruction exists per procedural sentence.
