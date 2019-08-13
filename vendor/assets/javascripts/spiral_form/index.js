//= require ./sub
window.onload = () =>  {
    let spiral = document.getElementById("spiral")
    let formField = document.createElement("form")
    formField.id = "formField"
    formField.action = "/items"
    formField.method = "post"
    let label = document.createElement("label")
    label.innerHTML = "商品名"
    spiral.appendChild(formField)
    formField.appendChild(label)
    let input = document.createElement("input")
    input.name = "item[name]"
    formField.appendChild(input)
    let button = document.createElement("button")
    button.id = "discBtn"
    button.innerHTML = " ディスク追加"
    formField.appendChild(button)
    let submit = document.createElement("button")
    submit.name = "commit"
    submit.type = "submit"
    submit.innerHTML = "作成"
    formField.appendChild(submit)
    let token = document.createElement("input")
    token.type ="hidden"
    token.name = "authenticity_token"
    token.value = "<%= form_authenticity_token %>"
    formField.appendChild(token)

    //Vue.jsで書きたい。。。
    let discBtn = document.getElementById("discBtn")
    let songBtn
    let discNumber = 0
    discBtn.addEventListener("click", e => {
      let songNumber = 0
      discNumber ++ 
      e.preventDefault()
      // formField = document.getElementById("formField")
      let discForm = document.createElement("div")
      discForm.id = `discForm${discNumber}`
      discForm.className = "discForm"
      discForm.style.borderBottom = "2px dotted black"
      formField.appendChild(discForm)
      let discInput = document.createElement('input');
      discInput.name = 'item[discs][][name]';
      discInput.placeholder = "Disc" + discNumber 
      discInput.style.display = "block"
      discInput.style.marginBottom = "10px"
      discForm.appendChild(discInput)
      let songForm = document.createElement("div")
      songForm.id = "songForm"
      discForm.appendChild(songForm)
      songBtn = document.createElement("button")
      songBtn.id = "songBtn"
      songBtn.innerHTML = "曲追加"
      songForm.appendChild(songBtn)
      addSongForm()
    })

    const addSongForm = () => {
       let songNumber = 0
       songBtn.addEventListener("click", e => {
       e.preventDefault()
       songNumber ++ 
       let parentDisc = e.target.parentNode.parentNode
       let songForm = parentDisc.childNodes[1]
       let song = document.createElement('input');
       song.name = 'item[discs][][songs][][name]';
       song.style.display = "block"
       song.placeholder = "Song" + songNumber
       song.style.marginBottom = "10px"
       songForm.appendChild(song)
      })
    }
}
    