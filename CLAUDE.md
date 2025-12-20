# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

**KaciAUnreal01** is an Unreal Engine 5.6 third-person action game project featuring platforming, combat, and puzzle mechanics. The game is designed for a 5-10 minute gameplay experience with stamina-based mechanics, enemy AI, a gravity gun, and a boss fight.

### Engine & Plugins
- Unreal Engine 5.6
- GameplayStateTree plugin (enabled for AI behavior)
- ModelingToolsEditorMode (editor-only)

## Project Architecture

### Content Structure

The project follows a modular architecture with clear separation of concerns:

**Content/Core/** - Core game framework
- GameMode/
- PlayerController/
- GameInstance/

**Content/Systems/** - Gameplay systems (component-based)
- Stamina/ - Stamina consumption and regeneration system
- Health/ - HP and damage system
- GravityGun/ - Physics-based grab/throw mechanics
- Heal/ - Pickup-based healing system

**Content/ThirdPerson/** - Base third-person template
- BP_ThirdPersonCharacter - Player character blueprint
- BP_ThirdPersonGameMode - Base game mode
- BP_ThirdPersonPlayerController - Player controller

**Content/Variant_Combat/** - Combat-specific variant assets
- Blueprints/AI/ - Enemy AI blueprints
  - EQS/ - Environment Query System assets
  - StateTreeTasks/ - State Tree task implementations
- Blueprints/Interactables/ - Interactive objects
- Input/Actions/ - Enhanced Input actions
- Anims/ - Combat animations
- VFX/ - Visual effects
- UI/ - Combat UI elements

**Content/UI/** - User interface
- HUD/ - Main HUD components
- Widgets/ - Reusable UI widgets (stamina bar, health bar)

**Content/Interactables/** - Interactive game elements
- Puzzles/ - Puzzle interaction objects
- Traps/ - Damage-dealing traps
- Pickups/ - Health pickups and collectibles

**Content/Materials/** - Material library
- Zones/ - Color-coded zone materials (platforming zones, danger zones)
- Prototyping/ - Blockout materials

**Content/Characters/Mannequins/** - Character assets
- Anims/ - Animation assets for unarmed, pistol, and rifle variants

## Key Gameplay Systems

### Stamina System
- Sprint consumes stamina (SHIFT key)
- Attacks consume stamina
- Auto-regeneration when not in use
- Integrated with UI stamina bar

### AI System
- Uses GameplayStateTree for behavior logic
- EQS (Environment Query System) for spatial reasoning
- Spawner-based enemy placement
- Boss AI with special arena behavior

### Zone-Based Level Design
- Color-coded materials distinguish zone types:
  - Platforming zones
  - Trap/danger zones
- Facilitates quick blockout and playtesting

## Development Workflow

### Opening the Project
1. Ensure Unreal Engine 5.6 is installed
2. Double-click `KaciAUnreal01.uproject`
3. The project will open in the Unreal Editor

### No Build System
This is a Blueprint-only project. There is no C++ code, so no compilation is required.

### Level Development
- Main level: `Content/Levels/Main/`
- Test levels: `Content/Levels/Test/`
- Blockout: `Content/Levels/Blockout/`

### Project Structure Script
`create-structure.ps1` - PowerShell script to regenerate the Content folder structure if needed

## Development Notes

### Language
Project documentation and TODO lists are in French. The development team uses French for planning and internal documentation.

### Design Goals (from README.md)
- 5-10 minute total playtime
- Third-person perspective with platforming mechanics
- Stamina-based sprint and combat
- Physics-based gravity gun
- Enemy spawning system with boss arena
- Puzzle interactions using "Use" key
- Visual feedback for damage and healing
- Color-coded environmental zones

### Current Status (✅ = Complete, 🔄 = In Progress)
- ✅ Project setup with third-person template
- 🔄 Stamina system (consumption + regeneration)
- 🔄 Sprint (SHIFT + stamina consumption)
- Remaining: Health/damage system, healing pickups, jump mechanics, gravity gun, enemy AI, boss fight, level blockout, UI elements

## File Naming Conventions
- Blueprints: `BP_` prefix
- Materials: `M_` prefix
- Material Instances: `MI_` prefix
- Widgets: `W_` or `WBP_` prefix
- Animation Blueprints: `ABP_` prefix
- Animation Montages: `MM_` prefix
- Blend Spaces: `BS_` prefix
