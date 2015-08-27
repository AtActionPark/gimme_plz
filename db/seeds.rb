User.create(name:  "clement",
             email: "clement.matheron@gmail.com",
             password:              "password",
             password_confirmation: "password",
             avatar: File.open(File.join(Rails.root, 'db', 'fixtures','clem2.png')),
             admin: true)

Project.create!(title: "Gimme $ plz - presentation",
                presentation: "Ceci est la presentation du projet. La taille est illimitée pour la page projet, mais limitées à 7 ligne sur la fiche de présentation du projet. Fonctionne uniquement sur chrome. Besoin de trouver une solution pour les autres browsers.",
                objective: 1000,
                user_id: 1,
                mainpicture: File.open(File.join(Rails.root, 'db', 'fixtures','clem2.png')),
                description: "# La description se fait en markdown

# An exhibit of Markdown

This note demonstrates some of what [Markdown][1] is capable of doing.

*Note: Feel free to play with this page. Unlike regular notes, this doesn't automatically save itself.*

## Basic formatting

Paragraphs can be written like so. A paragraph is the basic block of Markdown. A paragraph is what text will turn into when there is no reason it should become anything else.

Paragraphs must be separated by a blank line. Basic formatting of *italics* and **bold** is supported. This *can be **nested** like* so.

## Lists

### Ordered list

1. Item 1
2. A second item
3. Number 3
4. Ⅳ

*Note: the fourth item uses the Unicode character for [Roman numeral four][2].*

### Unordered list

* An item
* Another item
* Yet another item
* And there's more...

## Paragraph modifiers

### Code block

    Code blocks are very useful for developers and other people who look at code or other things that are written in plain text. As you can see, it uses a fixed-width font.

You can also make `inline code` to add code into other things.

### Quote

> Here is a quote. What this is should be self explanatory. Quotes are automatically indented when they are used.

## Headings

There are six levels of headings. They correspond with the six levels of HTML headings. You've probably noticed them already in the page. Each level down uses one more hash character.

### Headings *can* also contain **formatting**

### They can even contain `inline code`

Of course, demonstrating what headings look like messes up the structure of the page.

I don't recommend using more than three or four levels of headings here, because, when you're smallest heading isn't too small, and you're largest heading isn't too big, and you want each size up to look noticeably larger and more important, there there are only so many sizes that you can use.

## URLs

URLs can be made in a handful of ways:

* A named link to [MarkItDown][3]. The easiest way to do these is to select what you want to make a link and hit `Ctrl+L`.
* Another named link to [MarkItDown](http://www.markitdown.net/)
* Sometimes you just want a URL like <http://www.markitdown.net/>.

## Horizontal rule

A horizontal rule is a line that goes across the middle of the page.

---

It's sometimes handy for breaking things up.

## Images

Markdown can also contain images. ![logo](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGYAAABmCAMAAAAOARRQAAAAclBMVEUAAAD///9zc3Pm5ub7+/t3d3efn5+rq6uioqLg4OBERERWVlby8vI0NDT29valpaU/Pz/Q0NANDQ20tLQfHx/X19fIyMi6urrBwcGEhIRQUFCRkZFfX18ZGRllZWUrKyuUlJQcHByBgYExMTFiYmImJiZG5aSzAAADB0lEQVRoge2ae7NzMBDGE3pxiVuVVlXrOK/v/xVfl2JDDCObzpwZz0z/kD7yG1Y2yUJoJVcPC02JilB3awKpfpFGFEqLWszdUUkhxLnXmKBUSyGkDChhvmoKIT4jN/UUUkGe38A8yfUbmK9Adu3atWvXH1N6Esl4jH3Z0RA6J0axdCpUOPZZTGw8SmHY2PcS+w5yGDqeanM1mPHpkRpMPPLN2GQxo+DYqjA2Z/MUYehplU0awwXHmRk18pgILuuLgyoMg/ut25xLGkPzwXQN1GFuP73pOevahmEgBvoQnARaXHlMDA+HkQNHTWDKYzwYhLTz/IJWlnPZbSMmBQdR53mAW2n+Q7iasw+POs8Rsn0MDJeJrY/nDB0OCuYOb+HHA5+tB87VFODIbC1X7kZaKBgLHLHfxsKFBglTgga37SMGhhwJw8W7rYrAScDCwsDEEtRp7Qkw7I2FeYFe9TrfnODlZVgYB+abpHLAR7zKP0gYEoLjauT4IIcdXniYHGSw4E00MDjriRsLY4PgHCxuVVs/eVgYAvvRuHtoYGJgzMM3MLAnJkYDDQwmHzPDxHCpEt6zgGBiuOwC14EJLmZuXV7iYmY2gC7BxXALgkFtvn6gYUrxWrZdVNvcGTIYLikP8rExBRUoKrExfFcfeaL/pDDXmE6VoGO4BcFHuo2PKbjdRaO4xMf40+B0734wMdyc08hNVGAmaa3fu6FiJsUTs/8HEzMpBfV1PFzMuLBVz8+XSlPM5ZJdNmNSyqtue8VBEER8wUOvmu72bPdLmFFwmtD8CEZtrXS290XMqBjU1qOykAq0gjKLyfgyTffGVFC8yVdQZjF8DdXt35hPkqqxhkJSA8gDVaeHB9qTrGt+jzhnRW9THe5Rv2fLZ2zTBeS7eHnEbNa1j2f8VkcZ1lCR4s8P2l2vrviDjep6WLOrVq6Xq698cyMn7fUNyq4/KoUZCEK+8G1StWIla6ZTaaXEXDbJyyR9yVehPEooS5Z9ckpY/bUdW7dC2CyDtd8OUjNRNk04STPf/QfpjCnGc6CE8gAAAABJRU5ErkJggg==)

## Finally

There's actually a lot more to Markdown than this. See the official [introduction][4] and [syntax][5] for more information. However, be aware that this is not using the official implementation, and this might work subtly differently in some of the little things.


  [1]: http://daringfireball.net/projects/markdown/
  [2]: http://www.fileformat.info/info/unicode/char/2163/index.htm
  [3]: http://www.markitdown.net/
  [4]: http://daringfireball.net/projects/markdown/basics
  [5]: http://daringfireball.net/projects/markdown/syntax



",
                amount: 1000,
                timelimit: 0,
                category: 'Technologie'
  )

Project.create!(title: "GimmeSomeBlé",
                presentation: "Salut je m'appelle flo, j'adore le blé. ",
                objective: 50,
                user_id: 1,
                mainpicture: File.open(File.join(Rails.root, 'db', 'fixtures','flo.jpg')),
                description: "Je voudrai m'acheter beaucoup de blé, parceque c'est une céréale que je trouve super cool",
                amount: 20,
                timelimit: 5,
                category: 'Gastronomie'
  )

Project.create!(title: "Mona",
                presentation: "Je suis une peinture, lol. ",
                objective: 1000,
                user_id: 1,
                mainpicture: File.open(File.join(Rails.root, 'db', 'fixtures','mona.jpg')),
                description: "nope",
                amount: 200,
                timelimit: 100,
                category: 'Art'
  )

Project.create!(title: "Placeholder - Musique",
                presentation: "Project musique standard ",
                objective: 1000,
                user_id: 1,
                mainpicture: File.open(File.join(Rails.root, 'db', 'fixtures','missing-image.png')),
                description: "nope",
                amount: 0,
                timelimit: 20,
                category: 'Musique'
  )
Project.create!(title: "Placeholder - BD",
                presentation: "Project BD standard ",
                objective: 1000,
                user_id: 1,
                mainpicture: File.open(File.join(Rails.root, 'db', 'fixtures','missing-image.png')),
                description: "nope",
                amount: 0,
                timelimit: 10,
                category: 'BD'
  )
Project.create!(title: "Placeholder - Danse",
                presentation: "Project Danse standard ",
                objective: 1000,
                user_id: 1,
                mainpicture: File.open(File.join(Rails.root, 'db', 'fixtures','missing-image.png')),
                description: "nope",
                amount: 0,
                timelimit: 9,
                category: 'Danse'
  )
Project.create!(title: "Placeholder - Design",
                presentation: "Project Design standard ",
                objective: 1000,
                user_id: 1,
                mainpicture: File.open(File.join(Rails.root, 'db', 'fixtures','missing-image.png')),
                description: "nope",
                amount: 0,
                timelimit: 8,
                category: 'Design'
  )
Project.create!(title: "Placeholder - Mode",
                presentation: "Project Mode standard ",
                objective: 1000,
                user_id: 1,
                mainpicture: File.open(File.join(Rails.root, 'db', 'fixtures','missing-image.png')),
                description: "nope",
                amount: 0,
                timelimit: 7,
                category: 'Mode'
  )
Project.create!(title: "Placeholder - Cinema & video",
                presentation: "Project Cinema & video standard ",
                objective: 1000,
                user_id: 1,
                mainpicture: File.open(File.join(Rails.root, 'db', 'fixtures','missing-image.png')),
                description: "nope",
                amount: 0,
                timelimit: 6,
                category: 'Cinema & video'
  )
Project.create!(title: "Placeholder - Jeux",
                presentation: "Project Jeux standard ",
                objective: 1000,
                user_id: 1,
                mainpicture: File.open(File.join(Rails.root, 'db', 'fixtures','missing-image.png')),
                description: "nope",
                amount: 0,
                timelimit: 5,
                category: 'Jeux'
  )
Project.create!(title: "Placeholder - Journalisme",
                presentation: "Project Journalisme standard ",
                objective: 1000,
                user_id: 1,
                mainpicture: File.open(File.join(Rails.root, 'db', 'fixtures','missing-image.png')),
                description: "nope",
                amount: 0,
                timelimit: 4,
                category: 'Journalisme'
  )
Project.create!(title: "Placeholder - Photographie",
                presentation: "Project Photographie standard ",
                objective: 1000,
                user_id: 1,
                mainpicture: File.open(File.join(Rails.root, 'db', 'fixtures','missing-image.png')),
                description: "nope",
                amount: 0,
                timelimit: 3,
                category: 'Photographie'
  )
Project.create!(title: "Placeholder - Edition",
                presentation: "Project Edition standard ",
                objective: 1000,
                user_id: 1,
                mainpicture: File.open(File.join(Rails.root, 'db', 'fixtures','missing-image.png')),
                description: "nope",
                amount: 0,
                timelimit: 2,
                category: 'Edition'
  )
Project.create!(title: "Placeholder - Theatre",
                presentation: "Project Theatre standard ",
                objective: 1000,
                user_id: 1,
                mainpicture: File.open(File.join(Rails.root, 'db', 'fixtures','missing-image.png')),
                description: "nope",
                amount: 0,
                timelimit: 0,
                category: 'Theatre'
  )




