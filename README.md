# KaciAUnreal01

## 📋 À faire

### Systèmes Core

- ✅ Setup projet
- ✅ Template 3ème personne
- ✅ Système Stamina (consommation + régénération)
- ✅ Sprint (SHIFT + consommation stamina)
- ✅ Système Vie/Dégâts
- ✅ Système Heal (pickups)
- ✅ Saut + mécaniques platforming
- ✅ Gravity Gun (grab/release/throw)
- ✅ FireBall

### Combat & Ennemis

- en cours  Attaques consomment stamina reste pouvoir telekinesie 
- ✅ Système spawn ennemis (spawners + triggers)
- ✅ IA ennemis de base
- [] Boss arena (comportement boss)

### Level Design

- ✅ Blockout level principal (5-10min)
- ✅ Zones platforming (couleur dédiée)
- [] Zones pièges/dangers (couleur dédiée)
- ✅ Puzzle interaction "Use"
- [] Placement pièges dégâts
- [] Placement points heal
- [] Placement spawn points ennemis
- ✅ Zone finale/boss arena

### UI & Polish

- ✅ Barre Stamina
- [] Barre Vie (ajustement si besoin)
- [] Feedback visuel dégâts
- [] Feedback visuel heal

### Scène Finale

- ✅ Combat multiple ennemis
- [] Interactions originales (environnement)
- [] Boss fight


### Tests & Balance

- [] Playtesting mouvement
- [] Balance stamina/combat
- [] Difficulté ennemis
- [] Temps de jeu 5-10min

## Structure projet :

	Content/
		Blueprints/
			BP_GameMode
			BP_PlayerController
			BP_Character
			CharacterComponents/
				BP_StaminaComponent
				BP_HealthComponent
				BP_GravityGunComponent

		Levels/
			Lvl_Main.umap

		UI/
			HUD/
			Widgets/

		Interactables/
			Puzzles/
			Traps/
			Pickups/

		Materials/
			Zones/           (couleurs zones spéciales)
			Prototyping/
