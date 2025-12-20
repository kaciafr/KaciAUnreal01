# Script de création de la structure de dossiers pour le projet Unreal
# Usage: .\create-structure.ps1

# Dossiers Core
New-Item -ItemType Directory -Force -Path "Content/Core/GameMode"
New-Item -ItemType Directory -Force -Path "Content/Core/PlayerController"
New-Item -ItemType Directory -Force -Path "Content/Core/GameInstance"

# Dossiers Systems
New-Item -ItemType Directory -Force -Path "Content/Systems/Stamina"
New-Item -ItemType Directory -Force -Path "Content/Systems/Health"
New-Item -ItemType Directory -Force -Path "Content/Systems/GravityGun"
New-Item -ItemType Directory -Force -Path "Content/Systems/Heal"

# Dossiers UI
New-Item -ItemType Directory -Force -Path "Content/UI/HUD"
New-Item -ItemType Directory -Force -Path "Content/UI/Widgets"

# Dossiers Enemies
New-Item -ItemType Directory -Force -Path "Content/Enemies/AI"
New-Item -ItemType Directory -Force -Path "Content/Enemies/Spawners"
New-Item -ItemType Directory -Force -Path "Content/Enemies/Boss"

# Dossiers Levels
New-Item -ItemType Directory -Force -Path "Content/Levels/Main"
New-Item -ItemType Directory -Force -Path "Content/Levels/Test"
New-Item -ItemType Directory -Force -Path "Content/Levels/Blockout"

# Dossiers Interactables
New-Item -ItemType Directory -Force -Path "Content/Interactables/Puzzles"
New-Item -ItemType Directory -Force -Path "Content/Interactables/Traps"
New-Item -ItemType Directory -Force -Path "Content/Interactables/Pickups"

# Dossiers Materials
New-Item -ItemType Directory -Force -Path "Content/Materials/Zones"
New-Item -ItemType Directory -Force -Path "Content/Materials/Prototyping"
