Random.self_init();;
let bombas tabuleiro dificuldade =
	let contador = ref 0 in
		while !contador < dificuldade do			
		let a1 = Random.int (Array.length tabuleiro) in
		let b1 = Random.int (Array.length tabuleiro) in	
			if tabuleiro.(a1).(b1).(0) <> 1 then 		
				begin			
				tabuleiro.(a1).(b1).(0) <- 1;
				contador := !contador +1 ;
				end
			else
				contador := !contador;	
		done;
	tabuleiro;;

let qtdbombasvizinhas tabuleiro linha coluna =
	let numlinhas = Array.length tabuleiro and numcolunas = Array.length tabuleiro.(0) and contador = ref 0 in
		for i = (max 0 (linha -1)) to (min (numlinhas -1) (linha +1)) do
			for j = (max 0 (coluna -1)) to (min (numcolunas -1) (coluna +1)) do
				if tabuleiro.(i).(j).(0) = 1 then (*1 indica com bomba - 0 indica sem bomba*)
					contador := !contador +1
				else
					contador := !contador;
			done;
		done;
	!contador;;

let desenharqtdbombasvizinhas posx posy tamanho numero =
	if numero = 1 then 
		begin		
		Graphics.set_color Graphics.red;		
		Graphics.fill_circle ((posx/(tamanho)*tamanho) +(tamanho/2)) ((posy/(tamanho)*tamanho) +(tamanho/2)) (tamanho/16);
		end
	else if numero = 2 then
		begin		
		Graphics.set_color Graphics.red;		
		Graphics.fill_circle ((posx/(tamanho)*tamanho) +(tamanho*3/4)) ((posy/(tamanho)*tamanho) +(tamanho/2)) (tamanho/16);
		Graphics.fill_circle ((posx/(tamanho)*tamanho) +(tamanho*3/12)) ((posy/(tamanho)*tamanho) +(tamanho/2)) (tamanho/15);
		end
	else if numero = 3 then
		begin		
		Graphics.set_color Graphics.red;		
		Graphics.fill_circle ((posx/(tamanho)*tamanho) +(tamanho*3/4)) ((posy/(tamanho)*tamanho) +(tamanho/2)) (tamanho/16);
		Graphics.fill_circle ((posx/(tamanho)*tamanho) +(tamanho/2)) ((posy/(tamanho)*tamanho) +(tamanho/2)) (tamanho/16);
		Graphics.fill_circle ((posx/(tamanho)*tamanho) +(tamanho*3/12)) ((posy/(tamanho)*tamanho) +(tamanho/2)) (tamanho/16);				
		end
	else if numero = 4 then
		begin		
		Graphics.set_color Graphics.red;		
		Graphics.fill_circle ((posx/(tamanho)*tamanho) +(tamanho*3/4)) ((posy/(tamanho)*tamanho) +(tamanho*3/4)) (tamanho/16);
		Graphics.fill_circle ((posx/(tamanho)*tamanho) +(tamanho*3/12)) ((posy/(tamanho)*tamanho) +(tamanho*3/4)) (tamanho/16);				
		Graphics.fill_circle ((posx/(tamanho)*tamanho) +(tamanho*3/4)) ((posy/(tamanho)*tamanho) +(tamanho*3/12)) (tamanho/16);
		Graphics.fill_circle ((posx/(tamanho)*tamanho) +(tamanho*3/12)) ((posy/(tamanho)*tamanho) +(tamanho*3/12)) (tamanho/16);			
		end
	else if numero = 5 then
		begin		
		Graphics.set_color Graphics.red;		
		Graphics.fill_circle ((posx/(tamanho)*tamanho) +(tamanho*3/4)) ((posy/(tamanho)*tamanho) +(tamanho*3/4)) (tamanho/16);
		Graphics.fill_circle ((posx/(tamanho)*tamanho) +(tamanho*3/12)) ((posy/(tamanho)*tamanho) +(tamanho*3/4)) (tamanho/16);				
		Graphics.fill_circle ((posx/(tamanho)*tamanho) +(tamanho*3/4)) ((posy/(tamanho)*tamanho) +(tamanho*3/12)) (tamanho/16);
		Graphics.fill_circle ((posx/(tamanho)*tamanho) +(tamanho*3/12)) ((posy/(tamanho)*tamanho) +(tamanho*3/12)) (tamanho/16);			
		Graphics.fill_circle ((posx/(tamanho)*tamanho) +(tamanho/2)) ((posy/(tamanho)*tamanho) +(tamanho/2)) (tamanho/16);
		end
	else if numero = 6 then
		begin		
		Graphics.set_color Graphics.red;		
		Graphics.fill_circle ((posx/(tamanho)*tamanho) +(tamanho*3/4)) ((posy/(tamanho)*tamanho) +(tamanho*3/4)) (tamanho/16);
		Graphics.fill_circle ((posx/(tamanho)*tamanho) +(tamanho/2)) ((posy/(tamanho)*tamanho) +(tamanho*3/4)) (tamanho/16);
		Graphics.fill_circle ((posx/(tamanho)*tamanho) +(tamanho*3/12)) ((posy/(tamanho)*tamanho) +(tamanho*3/4)) (tamanho/16);
		Graphics.fill_circle ((posx/(tamanho)*tamanho) +(tamanho*3/4)) ((posy/(tamanho)*tamanho) +(tamanho*3/12)) (tamanho/16);
		Graphics.fill_circle ((posx/(tamanho)*tamanho) +(tamanho/2)) ((posy/(tamanho)*tamanho) +(tamanho*3/12)) (tamanho/16);
		Graphics.fill_circle ((posx/(tamanho)*tamanho) +(tamanho*3/12)) ((posy/(tamanho)*tamanho) +(tamanho*3/12)) (tamanho/16);		
		end
		else if numero = 7 then
		begin		
		Graphics.set_color Graphics.red;		
		Graphics.fill_circle ((posx/(tamanho)*tamanho) +(tamanho*3/4)) ((posy/(tamanho)*tamanho) +(tamanho*3/4)) (tamanho/16);
		Graphics.fill_circle ((posx/(tamanho)*tamanho) +(tamanho/2)) ((posy/(tamanho)*tamanho) +(tamanho*3/4)) (tamanho/16);
		Graphics.fill_circle ((posx/(tamanho)*tamanho) +(tamanho*3/12)) ((posy/(tamanho)*tamanho) +(tamanho*3/4)) (tamanho/16);
		Graphics.fill_circle ((posx/(tamanho)*tamanho) +(tamanho*3/4)) ((posy/(tamanho)*tamanho) +(tamanho*3/12)) (tamanho/16);
		Graphics.fill_circle ((posx/(tamanho)*tamanho) +(tamanho/2)) ((posy/(tamanho)*tamanho) +(tamanho*3/12)) (tamanho/16);
		Graphics.fill_circle ((posx/(tamanho)*tamanho) +(tamanho*3/12)) ((posy/(tamanho)*tamanho) +(tamanho*3/12)) (tamanho/16);
		Graphics.fill_circle ((posx/(tamanho)*tamanho) +(tamanho/2)) ((posy/(tamanho)*tamanho) +(tamanho/2)) (tamanho/16);
		end
		else if numero = 8 then
		begin		
		Graphics.set_color Graphics.red;		
		Graphics.fill_circle ((posx/(tamanho)*tamanho) +(tamanho*3/4)) ((posy/(tamanho)*tamanho) +(tamanho*3/4)) (tamanho/16);
		Graphics.fill_circle ((posx/(tamanho)*tamanho) +(tamanho/2)) ((posy/(tamanho)*tamanho) +(tamanho*3/4)) (tamanho/16);
		Graphics.fill_circle ((posx/(tamanho)*tamanho) +(tamanho*3/12)) ((posy/(tamanho)*tamanho) +(tamanho*3/4)) (tamanho/16);
		Graphics.fill_circle ((posx/(tamanho)*tamanho) +(tamanho*3/4)) ((posy/(tamanho)*tamanho) +(tamanho*3/12)) (tamanho/16);
		Graphics.fill_circle ((posx/(tamanho)*tamanho) +(tamanho/2)) ((posy/(tamanho)*tamanho) +(tamanho*3/12)) (tamanho/16);
		Graphics.fill_circle ((posx/(tamanho)*tamanho) +(tamanho*3/12)) ((posy/(tamanho)*tamanho) +(tamanho*3/12)) (tamanho/16);
		Graphics.fill_circle ((posx/(tamanho)*tamanho) +(tamanho*3/8)) ((posy/(tamanho)*tamanho) +(tamanho/2)) (tamanho/16);
		Graphics.fill_circle ((posx/(tamanho)*tamanho) +(tamanho*3/5)) ((posy/(tamanho)*tamanho) +(tamanho/2)) (tamanho/16);
		end
	else
		begin		
		Graphics.set_color (Graphics.rgb 235 210 110);
		Graphics.fill_rect (posx/(tamanho)*tamanho) (posy/(tamanho)*tamanho) tamanho tamanho;
		Graphics.set_color (Graphics.rgb 100 100 100);
		Graphics.fill_rect (posx/(tamanho)*tamanho) (posy/(tamanho)*tamanho) 2 tamanho;
		Graphics.fill_rect (posx/(tamanho)*tamanho) ((posy/(tamanho)*tamanho) + tamanho -3) tamanho 2;	
		Graphics.set_color (Graphics.rgb 150 150 150);
		Graphics.fill_rect ((posx/(tamanho)*tamanho) +3) (posy/(tamanho)*tamanho) (tamanho -3) 3;
		Graphics.fill_rect ((posx/(tamanho)*tamanho) + tamanho -3) (posy/(tamanho)*tamanho) 3 tamanho;
		Graphics.set_color Graphics.black;
		Graphics.draw_rect ((posx/(tamanho)*tamanho)) (posy/(tamanho)*tamanho) (tamanho) (tamanho);	
		end
		
let abrirtelajogo parametro resolucao=
	let numlinhas = (Array.length parametro) in
	let numcolunas = (Array.length parametro.(0)) in
	let largura = resolucao/numcolunas in
	let altura = resolucao/numlinhas in
	let posicaox = ref 0 in
	let posicaoy = ref 0 in
		for i = 0 to numlinhas -1 do
			for j = 0 to numcolunas -1 do
			Graphics.set_color (Graphics.rgb 150 150 150);
			Graphics.fill_rect !posicaox !posicaoy largura altura;
			Graphics.set_color (Graphics.rgb 100 100 100);
			Graphics.fill_rect (!posicaox +3) !posicaoy (largura -3) 3;
			Graphics.fill_rect (!posicaox + largura -3) !posicaoy 3 (!posicaoy + altura);
			Graphics.set_color Graphics.white;
			Graphics.fill_rect !posicaox !posicaoy 3 altura;
			Graphics.fill_rect !posicaox (!posicaoy + altura -3) (!posicaox + largura) 2;
			Graphics.set_color Graphics.black;
			Graphics.draw_rect !posicaox !posicaoy (largura -1) (resolucao/numlinhas -1);			
			posicaox := !posicaox + largura;			
			done;
		posicaox := 0;
		posicaoy := !posicaoy + altura;		
		done;;	


let rec abrircampo_sembomba posx posy tamanho tabuleiro = if (qtdbombasvizinhas tabuleiro (posx/tamanho) (posy/tamanho)) <> 0 then
	begin
	tabuleiro.(posx/tamanho).(posy/tamanho).(1) <- 1;	
	Graphics.set_color Graphics.white;
	Graphics.fill_rect (posx/(tamanho)*tamanho) (posy/(tamanho)*tamanho) tamanho tamanho;
	Graphics.set_color (Graphics.rgb 100 100 100);
	Graphics.fill_rect (posx/(tamanho)*tamanho) (posy/(tamanho)*tamanho) 2 tamanho;
	Graphics.fill_rect (posx/(tamanho)*tamanho) ((posy/(tamanho)*tamanho) + tamanho -3) tamanho 2;	
	Graphics.set_color (Graphics.rgb 150 150 150);
	Graphics.fill_rect ((posx/(tamanho)*tamanho) +3) (posy/(tamanho)*tamanho) (tamanho -3) 3;
	Graphics.fill_rect ((posx/(tamanho)*tamanho) + tamanho -3) (posy/(tamanho)*tamanho) 3 tamanho;
	Graphics.set_color Graphics.black;
	Graphics.draw_rect ((posx/(tamanho)*tamanho)) (posy/(tamanho)*tamanho) (tamanho) (tamanho);		
	desenharqtdbombasvizinhas posx posy tamanho (qtdbombasvizinhas tabuleiro (posx/tamanho) (posy/tamanho));
	end	
	else if tabuleiro.(posx/tamanho).(posy/tamanho).(1) = 0 then
	begin
		for i = ~-1 to 1 do
			for j = ~-1 to 1 do			
			tabuleiro.(posx/tamanho).(posy/tamanho).(1) <- 1;			
			desenharqtdbombasvizinhas posx posy tamanho (qtdbombasvizinhas tabuleiro (posx/tamanho) (posy/tamanho));			
			abrircampo_sembomba (min (max 0 (posx +(i*tamanho))) 699) (min (max 0 (posy +(j*tamanho))) 699) tamanho tabuleiro;			
			done;
		done; 
	end;;
	

let bomba_que_explodiu posx posy tamanho =
	Graphics.set_color Graphics.red;
	Graphics.fill_rect (posx/(tamanho)*tamanho) (posy/(tamanho)*tamanho) tamanho tamanho;
	Graphics.set_color (Graphics.rgb 100 100 100);
	Graphics.fill_rect (posx/(tamanho)*tamanho) (posy/(tamanho)*tamanho) 2 tamanho;
	Graphics.fill_rect (posx/(tamanho)*tamanho) ((posy/(tamanho)*tamanho) + tamanho -3) tamanho 2;	
	Graphics.set_color (Graphics.rgb 150 150 150);
	Graphics.fill_rect ((posx/(tamanho)*tamanho) +3) (posy/(tamanho)*tamanho) (tamanho -3) 3;
	Graphics.fill_rect ((posx/(tamanho)*tamanho) + tamanho -3) (posy/(tamanho)*tamanho) 3 tamanho;	
	Graphics.set_color Graphics.black;
	Graphics.draw_rect ((posx/(tamanho)*tamanho)) (posy/(tamanho)*tamanho) (tamanho) (tamanho);	
	Graphics.fill_circle ((posx/(tamanho)*tamanho) +(tamanho/2)) ((posy/(tamanho)*tamanho) +(tamanho/2)) (tamanho/4);
	Graphics.fill_rect ((posx/(tamanho)*tamanho) +(tamanho/2) -(tamanho/20)) ((posy/(tamanho)*tamanho) +(tamanho/2)) (tamanho/10) (tamanho/3);;

let mostrarbomba posx posy tamanho =	
	Graphics.set_color Graphics.black;
	Graphics.draw_rect ((posx/(tamanho)*tamanho)) (posy/(tamanho)*tamanho) (tamanho) (tamanho);	
	Graphics.fill_circle ((posx/(tamanho)*tamanho) +(tamanho/2)) ((posy/(tamanho)*tamanho) +(tamanho/2)) (tamanho/4);
	Graphics.fill_rect ((posx/(tamanho)*tamanho) +(tamanho/2) -(tamanho/20)) ((posy/(tamanho)*tamanho) +(tamanho/2)) (tamanho/10) (tamanho/3);;

let colocarflag posx posy tamanho =
	Graphics.set_color Graphics.blue;
	Graphics.fill_rect ((posx/(tamanho)*tamanho) +(tamanho*3/15)) ((posy/(tamanho)*tamanho) +(tamanho/2)) (tamanho/3) (tamanho/3);
	Graphics.set_color Graphics.black;
	Graphics.fill_rect ((posx/(tamanho)*tamanho) +(tamanho/2)) ((posy/(tamanho)*tamanho) +3) 3 ((tamanho/2) -3);
	Graphics.draw_rect ((posx/(tamanho)*tamanho)) (posy/(tamanho)*tamanho) (tamanho) (tamanho);;

let desenharcampominado tabuleiro numbomb resolucao =
	if resolucao = 350 then
		begin
		Graphics.open_graph ":0 350x350+200-200" ;
		end
	else
		Graphics.open_graph ":0 700x700+200-200" ;
	Graphics.set_window_title ("Campo minado - "^(string_of_int((Array.length tabuleiro)*(Array.length tabuleiro.(0)) -numbomb)));
	Graphics.set_color Graphics.black ;
	Graphics.fill_rect 0 0 resolucao resolucao ;
	abrirtelajogo tabuleiro resolucao;
	(*let flagmode = ref false in*)	
	let cont_vistos = ref 0 in	
	let a = ref (0,0) in	
	let posx = ref 0 in
	let posy = ref 0 in	
	let numlinhas = Array.length tabuleiro in	
	let numcolunas = Array.length tabuleiro.(0) in
	let tamanho = resolucao/Array.length tabuleiro in	
	let captura = ref false in	
	let fechar = ref false in
	let sair = ref false in
		while not !fechar && !cont_vistos < (((Array.length tabuleiro)*(Array.length tabuleiro)) -numbomb) do
		captura := Graphics.button_down ();
			if !captura = true then
				begin
					while not !sair (*&& not !fechar*) && !cont_vistos < (((Array.length tabuleiro)*(Array.length tabuleiro)) -numbomb) do			
					captura := Graphics.button_down ();				
					a := Graphics.mouse_pos();
					posx := fst !a;
					posy := snd !a;					
						if !captura = false && (fst !a) > 0 && (fst !a) < resolucao && (snd !a) > 0 && (snd !a) < resolucao then
							begin
								if tabuleiro.(!posx/tamanho).(!posy/tamanho).(0) = 1 then
									begin
									tabuleiro.(!posx/tamanho).(!posy/tamanho).(1) <- 1;
									bomba_que_explodiu !posx !posy tamanho;
									Graphics.set_window_title "VOCE PERDEU!";								
									sair := true;								
									fechar := true;								
									end		
								else (*if tabuleiro.(!posx/tamanho).(!posy/tamanho).(1) = 0 then*)								
									begin
									abrircampo_sembomba !posx !posy tamanho tabuleiro;
									tabuleiro.(!posx/tamanho).(!posy/tamanho).(1) <- 1; (*0 - local n visto; 1 - local visto*)							
									cont_vistos := 0;					
										for i = 0 to numlinhas -1 do
											for j = 0 to numcolunas -1 do
												if tabuleiro.(i).(j).(1) = 1 then
													cont_vistos := !cont_vistos +1
												else
													cont_vistos := !cont_vistos;
											done;
										done;									
									Graphics.set_window_title ("Campo Minado - "^string_of_int((Array.length tabuleiro)*(Array.length tabuleiro.(0)) - !cont_vistos - numbomb));									
									sair := true;
									end					
							end
					done;
					sair := false;
				end
			else			
				cont_vistos := !cont_vistos;
		done;
	if !cont_vistos >= (((Array.length tabuleiro)*(Array.length tabuleiro)) -numbomb) then
		begin		
		Graphics.set_window_title "VOCE GANHOU";		
			for i = 0 to numlinhas -1 do
				for j = 0 to numcolunas -1 do
				if tabuleiro.(i).(j).(0) = 1 then
					colocarflag (tamanho*i) (tamanho*j) tamanho
				else
					cont_vistos := !cont_vistos;
				done;
			done;
		end
	else
		for i = 0 to numlinhas -1 do
			for j = 0 to numcolunas -1 do
				if tabuleiro.(i).(j).(0) = 1 && tabuleiro.(i).(j).(1) = 0 then
					mostrarbomba (tamanho*i) (tamanho*j) tamanho
				else
					cont_vistos := !cont_vistos;
			done;
		done;
			
	Graphics.read_key () ;;
	Graphics.close_graph () ;;
	
let main () =
	let dificuldade = 20 in
	let resolucao = 350 in	
	let tabuleiro = Array.make_matrix 10 10 (Array.make 4 0) in
		for i = 0 to (Array.length tabuleiro) -1 do
			for j = 0 to (Array.length tabuleiro.(0)) -1 do
			tabuleiro.(i).(j) <- Array.make 4 0
			done;
		done;
	desenharcampominado (bombas tabuleiro dificuldade) dificuldade resolucao;;


main ();;
