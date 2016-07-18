zoo = {
  mammals: {
    cats: [
      "tiger",
      "lion",
      "cheetah"
      ],
    misc: {
      dog: "hyena",
      marine_mammal: "dolphin",
      bear: "grizzly"
    }
  },
  birds: {
    large: [
      "emu",
      "ostrich"
    ],
    small: [
      "finch",
      "parakeet"
    ],
    medium: "macaw"
    },
  reptiles: {
    snakes: [
      "python",
      "cobra"
    ],
    misc: {
      lizard: "monitor",
      turtle: "snapping turtle"
    }
  }
}

p zoo[:mammals][:cats].last
p zoo[:birds][:small]
p zoo[:reptiles][:snakes][1]
p zoo[:mammals][:misc][:dog]
p zoo[:reptiles][:misc]