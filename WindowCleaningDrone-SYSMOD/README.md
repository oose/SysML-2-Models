# Window Cleaning Drone: a SysML v2 model built in public

> [!TIP]
> **📅 Next workshop:** [LINK TO NEXT WORKSHOP](#) · Want the full training? [Systems Engineering trainings (English)](https://www.oose.com/topics/systems-engineering) · [Systems-Engineering-Trainings (Deutsch)](https://www.oose.de/unsere-themen/systems-engineering)

This repository holds the system model developed live in the **Stop Prompting, Start Engineering** workshop. We build it together, one session at a time, in SysML v2 and following the SYSMOD method. Between sessions the model sits here, so you can review it, ask questions, and catch up before we meet again.

![The Window Cleaning Drone in one picture](img/the-idea.svg)

> **Not a modeler?** Start with [STORY.md](STORY.md). It tells what the model says in plain words, with pictures and no notation.

> [!CAUTION]
> ### ⏱️ What did this model cost?
>
> | | |
> |---|---|
> | **Modeling in the workshop** | **less than 1 hour** |
> | **Expert review after the workshop** | **30 minutes** |
> | **Result** | A validated SysML v2 model: problem statement, base architecture with 5 building blocks made of 14 parts, each with a precise description, plus diagrams generated from it |
>
> **How:** the model was generated with **AI as an assistant** and **reviewed by oose SysML v2 experts**. The AI did the typing. Humans made the engineering decisions and checked every element.
>
> Compare that with what the first two steps of a system model usually take, then ask what this means for your projects.

---

## The system in two sentences

Cleaning the glass façades of high-rise buildings is one of the most dangerous jobs in building maintenance: people hang on ropes or stand in gondolas, sometimes forty floors up. The Window Cleaning Drone does the job without anyone at height: a drone on a tether, supplied with purified water and power from the roof, steered from an operator console.

## Where we are

The model grows step by step. Each session adds one or two SYSMOD steps.

| Step | What it answers | Status |
|---|---|---|
| 1 Problem Statement | Why does this system need to exist? | ✅ done |
| 2 System Idea (Base Architecture) | What is the rough idea, and what are its main building blocks? | ✅ done |
| 3 Stakeholder Analysis | Who cares about this system, and how much? | ⏭️ next session |
| 3b Stakeholder Needs | What does each of them need, in their own words? | planned |
| 4 Requirements | What must the system do and be? | planned |
| 5 System Context | What does the system touch at its boundary? | planned |
| 6 Use Cases | What do people use it for? | planned |
| 7a / 7b Functional Breakdown and Architecture | Which functions does it perform, and who inside does what? | planned |
| 8 Logical Architecture | Which solution principles carry those functions? | planned |
| 9 Physical Architecture | Which real components make it up? | planned |

## What is in this repository

| File | What it is | Open it with |
|---|---|---|
| [`WindowCleaningDroneModel.sysml`](WindowCleaningDroneModel.sysml) | The model in SysML v2 textual notation. This is the source of truth. | Any text editor, GitHub's file view, or VS Code with [SysIDE](https://sensmetry.com/syside/) |
| `WindowsCleanerDrone.mdszip` | The same model as a CATIA Magic / Cameo Systems Modeler project, with the diagrams | CATIA Magic / Cameo with SysML v2 support |
| [`views/`](views/) | Diagrams exported from the model (SVG) | Your browser |
| [`STORY.md`](STORY.md) | The model told as a story for non-technical readers | Your browser |
| [`img/`](img/) | Illustrations for the story (not part of the model) | Your browser |

### The views so far

| View | Shows |
|---|---|
| [Problem Statement](views/WCD-ProblemSpace__WCD-ProblemStatement.svg) | The problem the system solves, modeled as a `concern` about building façade maintenance |
| [Base Architecture breakdown](views/Base_Architecture__WCD-BA-BreakdownStructure.svg) | The five main building blocks and what each one is made of |

## Catch up before the next session

If you missed a session, or want to arrive prepared, this takes about 20 minutes:

1. Read [STORY.md](STORY.md) to get the idea.
2. Look at the two [views](views/). They are the same content as the story, in SysML v2 notation.
3. Open [`WindowCleaningDroneModel.sysml`](WindowCleaningDroneModel.sysml) and find the `problemStatement` concern and the `'WindowCleaningDrone-BA'` part definition. Compare them with the views.
4. Write down one thing you would challenge. Is a building block missing? Is one there that should not be? Does a description promise more than the part can do? Bring it to the session, or open an issue.

## Review the model and ask questions

This model is meant to be argued with. We follow one rule in the workshop: **every element must earn its place.** A part that validates but means nothing is a defect, not a decoration.

Open an [issue](https://github.com/oose/SysML-2-Models/issues) for:

- **Questions:** "Why is the ground station optional?", "Why is the water tank on the roof and not on the drone?"
- **Review findings:** something missing, something wrong, something that contradicts the physics of the real system
- **Notation questions:** "Why `part def` here and `part` there?", "What does `[0..1]` mean?"

Please reference the element by its name (for example `BufferTank` or `problemStatement`) so everyone can find it. Good questions often become the starting point of the next session.

Pull requests are welcome for typos and small fixes. Changes to the model's content we prefer to discuss in an issue first, because the workshop builds the model live and we want to keep the steps traceable.

## How the model is built

- **Language:** [SysML v2](https://www.omg.org/sysml/sysmlv2/), the new OMG standard for systems modeling, in its textual notation.
- **Method:** SYSMOD, a step-by-step approach that goes from the problem to the physical architecture, with each step building on the previous one.
- **Validation:** every change is checked with the Syside validator before it is committed.
- **Diagrams:** rendered from the model in CATIA Magic / Cameo, so the pictures always show what the model says.

## About

The workshop and the model are run by [oose eG](https://www.oose.de), Hamburg. oose trains, consults and coaches on MBSE and SysML v2.

**Trainings in Systems Engineering, MBSE and SysML v2:** [English](https://www.oose.com/topics/systems-engineering) · [Deutsch](https://www.oose.de/unsere-themen/systems-engineering)

Want to go further with SysML v2 between sessions? The [SysML v2 Club](https://clubs.oose.com) offers a self-paced course, a learning community, live sessions and browser access to SysML v2 tools, run by people who wrote the standard.
