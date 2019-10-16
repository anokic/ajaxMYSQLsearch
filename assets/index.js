window.onload = () => {

    document.querySelector('.search').addEventListener('keyup', function(){
      if(this.value != ''){
        $.ajax({
          url : 'search.php',
          type : 'GET',
          data : { search : this.value },
          dataType : 'text',
          success : function(data){
            var korisnici = JSON.parse(data);
            var objekatKorisnici = Object.values(korisnici)
            var html = ``;
            var i = 1;
            for(korisnik of objekatKorisnici){
              html += ` <tr>
                          <th scope="row">${i}</th>
                          <td>${korisnik.ime}</td>
                          <td>${korisnik.prezime}</td>
                          <td>${korisnik.email}</td>
                        </tr>`;

              i++;
            }
            document.querySelector('.tableBody').innerHTML = html;
          },
          error : function(xhr,status,message){
            console.log(xhr[status]);
          }
        })
      }
    })


}
