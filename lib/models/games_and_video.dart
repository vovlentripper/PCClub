


class GamesPC{
  int id;
  String name;
  String photo;
  String description;
  GamesPC(this.id, this.name, this.photo, this.description);
}
List <GamesPC> gamesPCList = [
  GamesPC(1, "The Witcher 3: Wild Hunt", "https://cdn1.ozone.ru/s3/multimedia-1-f/c600/7026511155.jpg","The Witcher 3: Wild Hunt — это ролевая игра с открытым миром, где вы играете за ведьмака Геральта, который ищет свою приёмную дочь в мире, полном опасностей и приключений."),
  GamesPC(2, "Cyberpunk 2077", "https://vkplay.ru/hotbox/content_files/news/2019/09/09/dfa0aa25bb3e4142b16cd892bd96a9da.jpg","Cyberpunk 2077 — это ролевая игра от первого лица, действие которой происходит в футуристическом городе Найт-Сити. Игроки могут настраивать своего персонажа и исследовать огромный открытый мир."),
  GamesPC(3, "Red Dead Redemption 2", "https://i.playground.ru/i/pix/2807802/image.jpg","Red Dead Redemption 2 — это приключенческая игра с открытым миром, действие которой происходит на Диком Западе. Игроки берут на себя роль Артура Моргана, члена банды Ван дер Линде."),
  GamesPC(4, "Grand Theft Auto V", "https://i.playground.ru/p/bVBLHOz7wqMhozCM_d4yoA.jpeg","Grand Theft Auto V — это приключенческая игра с открытым миром, действие которой происходит в вымышленном городе Лос-Сантос. Игроки могут исследовать город и выполнять различные миссии."),
  GamesPC(5, "Minecraft", "https://avatars.mds.yandex.net/i?id=e7b665ff9d2a006b8fc21888090c328f_l-4578426-images-thumbs&n=13","Minecraft — это песочница с элементами выживания, где игроки могут строить, исследовать и выживать в процедурно сгенерированном мире."),
  GamesPC(6, "Among Us", "https://cdn1.epicgames.com/33956bcb55d4452d8c47e16b94e294bd/offer/EGS_AmongUsAllinOnePack_Innersloth_Editions_S1-2560x1440-3af62fd8ae90516129cc87cdc54f60ca.jpg","Among Us — это многопользовательская игра, в которой игроки выполняют задачи на космическом корабле, пытаясь выявить предателей среди экипажа."),
  GamesPC(7, "Valorant", "https://irecommend.ru/sites/default/files/product-images/987749/PnJRBy81O55MLp6acXioBA.jpg","Valorant — это тактический шутер от первого лица, в котором команды игроков сражаются друг с другом в различных режимах игры."),
  GamesPC(8, "League of Legends", "https://steamuserimages-a.akamaihd.net/ugc/1667984827363734500/086C3FB92BA6390981E89DC4259F63141BCE553B/?imw=512&amp;imh=288&amp;ima=fit&amp;impolicy=Letterbox&amp;imcolor=%23000000&amp;letterbox=true","League of Legends — это многопользовательская онлайн-игра в жанре MOBA, в которой команды игроков сражаются друг с другом на различных картах"),
  GamesPC(9, "Fortnite", "https://vkplay.ru/hotbox/content_files/article/2017/7/39a99ac.jpeg", "Fortnite — это многопользовательская игра в жанре королевской битвы, в которой игроки строят укрепления и сражаются друг с другом до последнего выжившего."),
  GamesPC(10, "Apex Legends","https://avatars.mds.yandex.net/get-mpic/4725655/2a0000018a8d4cb07e0080e92c137e9bf7b2/orig", "Apex Legends — это многопользовательская игра в жанре королевской битвы, в которой команды игроков сражаются друг с другом в динамичных боях.")



];
class GamesPS{
  int id;
  String name;
  String photo;
  String description;
  GamesPS(this.id, this.name, this.photo,  this.description);

}
List <GamesPS> gamesPSList = [
  GamesPS(1, "God of War", "https://avatars.mds.yandex.net/i?id=2cdab43cd240a91edb68e7841c067f8e_l-4726647-images-thumbs&n=13", "God of War — это приключенческая игра с элементами экшена, в которой Кратос и его сын Атрей отправляются в путешествие по скандинавским землям, сражаясь с мифическими существами и богами."),
  GamesPS(2, "Spider-Man", "https://filearchive.cnews.ru/img/zoom/2018/12/28/marvel_s_spider_man.jpg", "Spider-Man — это экшен-игра с открытым миром, в которой игроки берут на себя роль Питера Паркера, сражающегося с преступностью в Нью-Йорке."),
  GamesPS(3, "Horizon Zero Dawn", "https://i.playground.ru/e/eb58sAiHTNQj-3w0GhTQsA.jpeg", "Horizon Zero Dawn — это приключенческая игра с открытым миром, в которой игроки берут на себя роль Элой, охотницы в постапокалиптическом мире, населенном механическими существами."),
  GamesPS(4, "The Last of Us Part II", "https://img.ixbt.site/live/topics/preview/00/05/98/08/48edd97c96.jpg", "The Last of Us Part II — это приключенческая игра с элементами экшена, в которой игроки берут на себя роль Элли, сражающейся за выживание в постапокалиптическом мире."),
  GamesPS(5, "Ghost of Tsushima", "https://i.playground.ru/e/vlVdkNNvTeutkLkW3_BJ_Q.png", "Ghost of Tsushima — это приключенческая игра с открытым миром, в которой игроки берут на себя роль самурая Дзина Сакаи, защищающего остров Цусима от монгольского вторжения."),
  GamesPS(6, "Uncharted 4: A Thief's End", "https://i.playground.ru/e/effH4xMH_04nwBEGl_BGoA.jpeg", "Uncharted 4: A Thief's End — это приключенческая игра с элементами экшена, в которой игроки берут на себя роль Нейтана Дрейка, отправляющегося на поиски сокровищ."),
  GamesPS(7, "Bloodborne", "https://image.api.playstation.com/vulcan/img/rnd/202010/2614/KKLEVc2SIIgrFVjsZChZJk1d.jpg?w=5000&thumb=false", "Bloodborne — это экшен-RPG, в которой игроки исследуют готический мир Ярнам, сражаясь с монстрами и разгадывая тайны города."),
  GamesPS(8, "Final Fantasy VII Remake", "https://248006.selcdn.ru/intgen-prod/blocks/repeatFields/teacher_works/Mz2pLyh1wbUUjK5UHL8D8SJwRHsyzbz7XAER8k2p.jpg", "Final Fantasy VII Remake — это ролевая игра с элементами экшена, в которой игроки берут на себя роль Клауда Страйфа, сражающегося против корпорации Шинра в городе Мидгар."),
  GamesPS(9, "Death Stranding", "https://digiseller.mycdn.ink/preview/1040376/p1_3581644_b40b616f.jpeg", "Death Stranding — это приключенческая игра с элементами экшена, в которой игроки берут на себя роль Сэма Портера Бриджеса, доставляющего грузы в постапокалиптическом мире."),
  GamesPS(10, "Ratchet & Clank: Rift Apart", "https://image.api.playstation.com/vulcan/ap/rnd/202101/2921/DwVjpbKOsFOyPdNzmSTSWuxG.png", "Ratchet & Clank: Rift Apart — это приключенческая игра с элементами экшена, в которой игроки берут на себя роль Рэтчета и Клэнка, сражающихся с врагами и исследующих различные измерения."),




];