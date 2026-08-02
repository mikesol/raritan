// Full song catalog with track order per album.
// slug: set when the song has a journal page. null = grayed out (not yet started).

export interface Song {
  title: string;
  slug: string | null;
  album: string;
  track: number;
}

export const albumOrder = [
  "Route 18",
  "Lisburn Road",
  "Palm Drive",
  "Impasse de la Blonde",
  "Sepetlahdentie",
  "Lotissement Harrouchi",
];

export const songs: Song[] = [
  // Route 18
  { title: "La fille en rouge", slug: "la-fille-en-rouge", album: "Route 18", track: 1 },
  { title: "Joli petit amour", slug: "joli-petit-amour", album: "Route 18", track: 2 },
  { title: "Oh Marie", slug: "oh-marie", album: "Route 18", track: 3 },
  { title: "C'est quoi ce bordel", slug: "cest-quoi-ce-bordel", album: "Route 18", track: 4 },
  { title: "Joséphine", slug: "josephine", album: "Route 18", track: 5 },
  { title: "Tu peux m'indiquer le chemin", slug: "tu-peux-mindiquer-le-chemin", album: "Route 18", track: 6 },
  { title: "Sarah come home", slug: "sarah-come-home", album: "Route 18", track: 7 },
  { title: "That is how I lost my cat", slug: "that-is-how-i-lost-my-cat", album: "Route 18", track: 8 },
  { title: "Nobody will ever love you", slug: "nobody-will-ever-love-you", album: "Route 18", track: 9 },
  { title: "Ça va, Apolline", slug: null, album: "Route 18", track: 10 },
  { title: "Addendale", slug: "addendale", album: "Route 18", track: 11 },
  { title: "Goodbye everybody / L'un vient de l'autre", slug: null, album: "Route 18", track: 12 },

  // Lisburn Road
  { title: "Fous-moi la paix", slug: null, album: "Lisburn Road", track: 1 },
  { title: "Lisburn road", slug: null, album: "Lisburn Road", track: 2 },
  { title: "You gotta let up if you wanna get up", slug: null, album: "Lisburn Road", track: 3 },
  { title: "Oh tell me why", slug: null, album: "Lisburn Road", track: 4 },
  { title: "On est le 18 juillet", slug: null, album: "Lisburn Road", track: 5 },
  { title: "Swirving", slug: null, album: "Lisburn Road", track: 6 },
  { title: "Christmas time", slug: null, album: "Lisburn Road", track: 7 },
  { title: "He's my savior", slug: null, album: "Lisburn Road", track: 8 },
  { title: "Falling apart at the seams", slug: null, album: "Lisburn Road", track: 9 },
  { title: "Come home", slug: null, album: "Lisburn Road", track: 10 },
  { title: "Gnus bleus", slug: null, album: "Lisburn Road", track: 11 },
  { title: "Jusqu'à ces derniers temps", slug: null, album: "Lisburn Road", track: 12 },
  { title: "Lover cover me", slug: "lover-cover-me", album: "Lisburn Road", track: 13 },
  { title: "Happier Together", slug: "happier-together", album: "Lisburn Road", track: 14 },

  // Palm Drive
  { title: "We're gonna win Big Game", slug: null, album: "Palm Drive", track: 1 },
  { title: "I got you", slug: null, album: "Palm Drive", track: 2 },
  { title: "Joy to the world heavenly father", slug: null, album: "Palm Drive", track: 3 },
  { title: "Jenna come out", slug: null, album: "Palm Drive", track: 4 },
  { title: "Sophocles", slug: null, album: "Palm Drive", track: 5 },
  { title: "Bill", slug: null, album: "Palm Drive", track: 6 },
  { title: "Sangria", slug: null, album: "Palm Drive", track: 7 },
  { title: "It's getting old", slug: null, album: "Palm Drive", track: 8 },
  { title: "Loving you was the craziest thing", slug: null, album: "Palm Drive", track: 9 },
  { title: "86 (occupies a place)", slug: null, album: "Palm Drive", track: 10 },
  { title: "This one's for Jen Grahamm", slug: null, album: "Palm Drive", track: 11 },
  { title: "Help me get my feet on the ground", slug: null, album: "Palm Drive", track: 12 },
  { title: "Down with the ramparts", slug: null, album: "Palm Drive", track: 13 },

  // Impasse de la Blonde
  { title: "Le colo-colo", slug: null, album: "Impasse de la Blonde", track: 1 },
  { title: "Many many miles away", slug: null, album: "Impasse de la Blonde", track: 2 },
  { title: "Ça ne va pas", slug: null, album: "Impasse de la Blonde", track: 3 },
  { title: "Quand je pense à toi", slug: null, album: "Impasse de la Blonde", track: 4 },
  { title: "Through the roof", slug: null, album: "Impasse de la Blonde", track: 5 },
  { title: "Milieu du lit", slug: null, album: "Impasse de la Blonde", track: 6 },
  { title: "Rambling run", slug: null, album: "Impasse de la Blonde", track: 7 },
  { title: "Les etincelles", slug: null, album: "Impasse de la Blonde", track: 8 },
  { title: "Get on up", slug: null, album: "Impasse de la Blonde", track: 9 },
  { title: "Jérôme (nobody will love me)", slug: null, album: "Impasse de la Blonde", track: 10 },
  { title: "I ran a red light", slug: null, album: "Impasse de la Blonde", track: 11 },
  { title: "Il n'y aura personne", slug: null, album: "Impasse de la Blonde", track: 12 },
  { title: "C'est pour ça que nous sommes là", slug: null, album: "Impasse de la Blonde", track: 13 },
  { title: "Désiré", slug: null, album: "Impasse de la Blonde", track: 14 },
  { title: "Ta mère en shorts", slug: null, album: "Impasse de la Blonde", track: 15 },

  // Sepetlahdentie
  { title: "Samba do Rio de Janeiro", slug: null, album: "Sepetlahdentie", track: 1 },
  { title: "You and I", slug: null, album: "Sepetlahdentie", track: 2 },
  { title: "Airball", slug: null, album: "Sepetlahdentie", track: 3 },
  { title: "Steam train", slug: null, album: "Sepetlahdentie", track: 4 },
  { title: "Sexy Aleksi", slug: null, album: "Sepetlahdentie", track: 5 },
  { title: "Faster than lightning", slug: null, album: "Sepetlahdentie", track: 6 },
  { title: "Dynamo", slug: null, album: "Sepetlahdentie", track: 7 },
  { title: "Everybody's favorite little girl", slug: null, album: "Sepetlahdentie", track: 8 },
  { title: "Remember Maija goes what?", slug: null, album: "Sepetlahdentie", track: 9 },
  { title: "Maija Shannon Ulrika", slug: null, album: "Sepetlahdentie", track: 10 },
  { title: "Good morning to you", slug: null, album: "Sepetlahdentie", track: 11 },
  { title: "Eskari girl", slug: "eskari-girl", album: "Sepetlahdentie", track: 12 },
  { title: "But not the hippopotamus", slug: null, album: "Sepetlahdentie", track: 13 },
  { title: "A da da", slug: null, album: "Sepetlahdentie", track: 14 },
  { title: "It's ok", slug: null, album: "Sepetlahdentie", track: 15 },
  { title: "Hei Maija (Kultani Rakas)", slug: null, album: "Sepetlahdentie", track: 16 },
  { title: "Tänään", slug: null, album: "Sepetlahdentie", track: 17 },

  // Lotissement Harrouchi
  { title: "I can't live another day without you", slug: null, album: "Lotissement Harrouchi", track: 1 },
  { title: "Jamie's not a robber", slug: null, album: "Lotissement Harrouchi", track: 2 },
  { title: "Everybody here", slug: null, album: "Lotissement Harrouchi", track: 3 },
  { title: "Do you care", slug: null, album: "Lotissement Harrouchi", track: 4 },
  { title: "La dix-huitième", slug: null, album: "Lotissement Harrouchi", track: 5 },
  { title: "It's My Policy", slug: null, album: "Lotissement Harrouchi", track: 6 },
  { title: "I Will Be Your Home", slug: null, album: "Lotissement Harrouchi", track: 7 },
  { title: "Never gonna take me back", slug: null, album: "Lotissement Harrouchi", track: 8 },
];
