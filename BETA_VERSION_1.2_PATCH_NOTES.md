# Lyrian Chronicles Character Builder - Beta Version 1.2 Patch Notes

Prepared as a Beta 1.2 checkpoint copied from the cleaned Alpha 5 build.

## Package Status

- This folder is a self-contained Beta 1.2 copy made from the cleaned Alpha 5 build.
- No zip package has been created yet.
- The active rules default is set to the latest known Lyrian Chronicles version available in the local manifest.
- The old filled-PDF workflow is intentionally removed from the guided flow for now because the browser sheet is the primary play surface.

## Builder Flow Changes

- Reworked the guided builder into a clearer step-by-step character creation flow with persistent character identity at the top.
- Added primary species, ancestry/subspecies, profile, main stats, secondary stats, breakthroughs, classes, skills, equipment, and review/finish steps.
- Added top Continue controls on builder steps so users do not have to scroll to the bottom to advance.
- Added a persistent Reset Character control in the left sidebar on all builder steps.
- Renamed Start Over Character to Reset Character.
- Added a confirmation prompt before resetting so accidental clicks do not erase the build.
- Added Continue to Character Sheet access for users who already have enough of a character started and want to jump to the live sheet.
- Removed visible references to D&D Beyond in user-facing helper text while preserving the desired pinned-character workflow.
- Added left-sidebar scrolling so the navigation and save/load/import/export controls can be reached independently from the middle content area.
- Improved the review step layout so current build cards sit side by side more cleanly.

## Rules And Character Creation Accuracy

- Updated the default game version behavior so the builder defaults to the latest local rules version unless the user deliberately selects an older one.
- Added standard main-stat array handling for `5, 4, 4, 3` instead of unrestricted numeric entry.
- Added secondary-stat allocation handling based on the creation array structure described in the character creation reference.
- Updated derived stat calculations from the character creation reference, including HP using `20 + Toughness * 5`.
- Added clearer descriptions for main stats and secondary stats so new players understand what each value means.
- Added Spirit Core explanation in the profile step.
- Synced the top character name field with the profile Character Name field in both directions.
- Allowed the profile step to continue even when optional profile fields are blank.
- Added starting Clim handling with standard starting funds, breakthrough bonuses, spent equipment cost, remaining Clim, and a manual GM override.
- Added earned Clim and earned XP tracking on the character sheet so post-creation rewards can be recorded and remembered.

## Species, Ancestry, And Race Feature Changes

- Improved species and ancestry detail panels so long descriptions can scroll inside the selection pane.
- Improved text contrast for racial bonuses, proficiencies, and feature callouts so they remain readable on the darker Lyrian-themed background.
- Added fuller race feature display for source-backed abilities, including cost, range, and descriptions where available.
- Added Demon clan handling as an ancestry-style choice when Demon is selected.
- Rechecked ancestry/subrace behavior for species that do not have a source-backed ancestry option.
- Added race-specific breakthrough gating so options with species requirements are disabled or hidden when the character does not qualify.
- Added prerequisite messaging for disabled options so users can see why an option is unavailable.

## Breakthrough Changes

- Added breakthrough budget visibility so users can see available points and how selections affect the remaining pool.
- Added selected-state styling for breakthroughs so chosen options stay visually marked without needing to scroll back to the top.
- Added deterministic breakthrough effects into the builder pipeline where possible.
- Added Rich Parents support so its additional Clim appears later in equipment and on the sheet.
- Added pending-choice handling for breakthrough effects that require a follow-up choice, such as selecting a stat, skill, weapon group, or expertise.
- Added breakthrough artwork placeholders and visual treatment so the list is easier to scan.

## Class Builder Changes

- Added class prerequisite handling so locked classes are grayed out when requirements are not met.
- Added prerequisite text for locked classes.
- Added tier and role filtering so classes can be grouped by roles such as controller, defender, healer, striker, support, utility, specialist, and spellcaster.
- Added selected-class indicators on class cards and selected class chips.
- Added click-to-untake behavior for selected classes.
- Added class detail panel scrolling so long class descriptions do not force the whole page to scroll.
- Added clearer short descriptions to class cards where the source data supports it.
- Added support for starting class budget concepts from the character creation reference, including class EXP and interlude point tracking foundations.

## Skills And Expertise Changes

- Reworked the skills page from free numeric typing toward a point-spend model.
- Added visible spent/available skill point tracking.
- Added support for racial skill point bonuses and builder-fed skill totals.
- Added expertise tracking foundations so narrow expertises can be represented separately from the broad skill.
- Added rollable skill values on the sheet, with the roll result showing die result, modifiers, and final total.

## Equipment And Inventory Changes

- Added equipment search and selection with readable item cards.
- Added side-panel item details with its own scroll area for long descriptions.
- Added equipment cost tracking against starting Clim and breakthrough Clim bonuses.
- Added remaining Clim display.
- Added manual Clim override for GM-approved alternate starting funds.
- Added selected equipment seeding into the live sheet inventory/combat area.
- Added groundwork for item-based attack generation and armor-derived stat effects.

## Character Sheet Redesign

- Replaced the PDF-page-style sheet surface with a more compact live play dashboard.
- Removed the page-by-page PDF sections from the default online sheet view.
- Added builder-fed identity, species, ancestry, class, breakthrough, funds, equipment, and pending-choice reference data.
- Reworked the top sheet area into compact stat/resource cards.
- Added HP heal and damage controls with improved color contrast.
- Added AP and RP current/max tracking.
- Added compact derived combat values such as Speed, Initiative, Guard, Evasion, Dodge, Block, Potency, and Save.
- Added clickable roll controls for saves, skills, initiative, and attacks.
- Added action workspace tabs for Actions, Abilities, Inventory, Crafting & Gathering, Proficiencies, Breakthroughs, and Notes.
- Added Crafting & Gathering as its own action workspace tab.
- Reduced redundant manual compendium selections so the live sheet is fed by the builder whenever possible.

## Combat And Rolling Changes

- Changed attack controls so attacks can distinguish Roll Attack from Roll Damage.
- Added Use behavior for non-roll actions such as Move, Double Move, Dodge, and Block.
- Added AP/RP spending behavior for actions where applicable.
- Added damage roll parsing foundations so equipped weapons can produce different damage rolls.
- Added a right-side roll result card that shows the die roll breakdown and total.
- Added roll animations for normal sheet rolls and manual dice tray rolls.

## Dice Roller Changes

- Added a floating dice tray button that stays available above the sheet.
- Reworked the dice tray icon to use the Lyrian sword symbol inside a die mark.
- Added dice selection for d20, d12, d100, d10, d8, d6, and d4.
- Added dice set selection with expandable support for additional dice sets later.
- Added the Angels Sword, Leaflit, and Asari dice visual sets.
- Added dice set preview images for the tray.
- Added dice rolling sound effects.
- Added d100 handling as two dice, a percentile die and a d10.
- Reworked the image dice animation so the shadow is separate from the rotating die body.
- Increased dice travel speed and bounce behavior.
- Added longer visible result timing so dice and total cards remain readable after rolling.
- Added transparent fancy dice sprites for all supported dice types across all current dice sets.

## Visual And Accessibility Changes

- Added the Lyrian homepage castle image as the sheet background atmosphere.
- Improved dark and light text contrast across cards, forms, funds, equipment, damage, and healing controls.
- Improved source-material continuity with darker panels, gold accents, parchment cards, and stronger blue/gold contrast.
- Added scroll containment to long builder panels so the main page does not become difficult to navigate.
- Cleaned up several places where text blended into the background.

## Diagnostics And Maintenance

- Expanded the main diagnostic script to check the dice test page, dice renderer modules, and dice sprite assets.
- Added syntax checks for the newer dice renderer files.
- Added static reference checks for both the main app page and the dice test page.
- Confirmed all dice sprite files exist and have usable transparent bounds.
- Confirmed no obvious temp, backup, or audit artifacts are present in the Beta 1.2 copy.

## Known Beta 1.2 Limitations

- Browser workflow automation is still skipped unless Playwright and `playwright-core` are available on the machine.
- The class progression system still needs deeper work for ordered ability purchases, mastered-class prerequisites, and exact Spirit Core spending.
- Some source-backed choice effects still need stronger follow-up UI so every “choose a stat,” “choose a skill,” “choose a weapon group,” or “choose an expertise” result updates the sheet automatically.
- Equipment still needs the final pass for full armor penalties, burden, equipped weapon actions, and exact damage formulas across all weapon types.
- The dice animation is improved with fancy sprites, but true physics-quality 3D dice remains a separate enhancement path if we decide to bring in a full dice physics library or final GLB dice models.
