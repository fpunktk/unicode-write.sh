#!/bin/bash

# unicode-write.sh by Felix Kästner (fpunktk), GPL3

# a script that transforms text into random similar looking unicode characters
# it can be used to generate human readable text that cannot easily be processed by machines

# selection of replace characters
# echo "
# # complete lower upper
# ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ
# ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ
# 𝐚𝐛𝐜𝐝𝐞𝐟𝐠𝐡𝐢𝐣𝐤𝐥𝐦𝐧𝐨𝐩𝐪𝐫𝐬𝐭𝐮𝐯𝐰𝐱𝐲𝐳
# 𝐀𝐁𝐂𝐃𝐄𝐅𝐆𝐇𝐈𝐉𝐊𝐋𝐌𝐍𝐎𝐏𝐐𝐑𝐒𝐓𝐔𝐕𝐖𝐗𝐘𝐙
# 𝒂𝒃𝒄𝒅𝒆𝒇𝒈𝒉𝒊𝒋𝒌𝒍𝒎𝒏𝒐𝒑𝒒𝒓𝒔𝒕𝒖𝒗𝒘𝒙𝒚𝒛
# 𝑨𝑩𝑪𝑫𝑬𝑭𝑮𝑯𝑰𝑱𝑲𝑳𝑴𝑵𝑶𝑷𝑸𝑹𝑺𝑻𝑼𝑽𝑾𝑿𝒀𝒁
# 𝓪𝓫𝓬𝓭𝓮𝓯𝓰𝓱𝓲𝓳𝓴𝓵𝓶𝓷𝓸𝓹𝓺𝓻𝓼𝓽𝓾𝓿𝔀𝔁𝔂𝔃
# 𝓐𝓑𝓒𝓓𝓔𝓕𝓖𝓗𝓘𝓙𝓚𝓛𝓜𝓝𝓞𝓟𝓠𝓡𝓢𝓣𝓤𝓥𝓦𝓧𝓨𝓩
# 𝖆𝖇𝖈𝖉𝖊𝖋𝖌𝖍𝖎𝖏𝖐𝖑𝖒𝖓𝖔𝖕𝖖𝖗𝖘𝖙𝖚𝖛𝖜𝖝𝖞𝖟
# 𝕬𝕭𝕮𝕯𝕰𝕱𝕲𝕳𝕴𝕵𝕶𝕷𝕸𝕹𝕺𝕻𝕼𝕽𝕾𝕿𝖀𝖁𝖂𝖃𝖄𝖅
# 𝖺𝖻𝖼𝖽𝖾𝖿𝗀𝗁𝗂𝗃𝗄𝗅𝗆𝗇𝗈𝗉𝗊𝗋𝗌𝗍𝗎𝗏𝗐𝗑𝗒𝗓
# 𝖠𝖡𝖢𝖣𝖤𝖥𝖦𝖧𝖨𝖩𝖪𝖫𝖬𝖭𝖮𝖯𝖰𝖱𝖲𝖳𝖴𝖵𝖶𝖷𝖸𝖹
# 𝗮𝗯𝗰𝗱𝗲𝗳𝗴𝗵𝗶𝗷𝗸𝗹𝗺𝗻𝗼𝗽𝗾𝗿𝘀𝘁𝘂𝘃𝘄𝘅𝘆𝘇
# 𝗔𝗕𝗖𝗗𝗘𝗙𝗚𝗛𝗜𝗝𝗞𝗟𝗠𝗡𝗢𝗣𝗤𝗥𝗦𝗧𝗨𝗩𝗪𝗫𝗬𝗭
# 𝘢𝘣𝘤𝘥𝘦𝘧𝘨𝘩𝘪𝘫𝘬𝘭𝘮𝘯𝘰𝘱𝘲𝘳𝘴𝘵𝘶𝘷𝘸𝘹𝘺𝘻
# 𝘈𝘉𝘊𝘋𝘌𝘍𝘎𝘏𝘐𝘑𝘒𝘓𝘔𝘕𝘖𝘗𝘘𝘙𝘚𝘛𝘜𝘝𝘞𝘟𝘠𝘡
# 𝙖𝙗𝙘𝙙𝙚𝙛𝙜𝙝𝙞𝙟𝙠𝙡𝙢𝙣𝙤𝙥𝙦𝙧𝙨𝙩𝙪𝙫𝙬𝙭𝙮𝙯
# 𝘼𝘽𝘾𝘿𝙀𝙁𝙂𝙃𝙄𝙅𝙆𝙇𝙈𝙉𝙊𝙋𝙌𝙍𝙎𝙏𝙐𝙑𝙒𝙓𝙔𝙕
# 𝚊𝚋𝚌𝚍𝚎𝚏𝚐𝚑𝚒𝚓𝚔𝚕𝚖𝚗𝚘𝚙𝚚𝚛𝚜𝚝𝚞𝚟𝚠𝚡𝚢𝚣
# 𝙰𝙱𝙲𝙳𝙴𝙵𝙶𝙷𝙸𝙹𝙺𝙻𝙼𝙽𝙾𝙿𝚀𝚁𝚂𝚃𝚄𝚅𝚆𝚇𝚈𝚉
# ⓐⓑⓒⓓⓔⓕⓖⓗⓘⓙⓚⓛⓜⓝⓞⓟⓠⓡⓢⓣⓤⓥⓦⓧⓨⓩ
# ⒶⒷⒸⒹⒺⒻⒼⒽⒾⒿⓀⓁⓂⓃⓄⓅⓆⓇⓈⓉⓊⓋⓌⓍⓎⓏ
# 
# # numbers
# 𝟎𝟏𝟐𝟑𝟒𝟓𝟔𝟕𝟖𝟗
# 𝟘𝟙𝟚𝟛𝟜𝟝𝟞𝟟𝟠𝟡
# 𝟢𝟣𝟤𝟥𝟦𝟧𝟨𝟩𝟪𝟫
# 𝟬𝟭𝟮𝟯𝟰𝟱𝟲𝟳𝟴𝟵
# 𝟶𝟷𝟸𝟹𝟺𝟻𝟼𝟽𝟾𝟿
# ０１２３４５６７８９
# ₀₁₂₃₄₅₆₇₈₉
# ⁰¹²³⁴⁵⁶⁷⁸⁹
# 
# # complete lower
# ⒜⒝⒞⒟⒠⒡⒢⒣⒤⒥⒦⒧⒨⒩⒪⒫⒬⒭⒮⒯⒰⒱⒲⒳⒴⒵
# 𝔞𝔟𝔠𝔡𝔢𝔣𝔤𝔥𝔦𝔧𝔨𝔩𝔪𝔫𝔬𝔭𝔮𝔯𝔰𝔱𝔲𝔳𝔴𝔵𝔶𝔷
# 𝕒𝕓𝕔𝕕𝕖𝕗𝕘𝕙𝕚𝕛𝕜𝕝𝕞𝕟𝕠𝕡𝕢𝕣𝕤𝕥𝕦𝕧𝕨𝕩𝕪𝕫
# 
# # complete upper
# 𝐴𝐵𝐶𝐷𝐸𝐹𝐺𝐻𝐼𝐽𝐾𝐿𝑀𝑁𝑂𝑃𝑄𝑅𝑆𝑇𝑈𝑉𝑊𝑋𝑌𝑍
# 
# # incomplete
# ①②③④⑤⑥⑦⑧⑨
# ⑴⑵⑶⑷⑸⑹⑺⑻⑼
# 𐒆⒈⒉⒊⒋⒌⒍⒎⒏⒐
# 𝔸𝔹𝔻𝔼𝔽𝔾𝕀𝕁𝕂𝕃𝕄𝕆𝕊𝕋𝕌𝕍𝕎𝕏𝕐
# 𝑎𝑏𝑐𝑑𝑒𝑓𝑔𝑖𝑘𝑙𝑚𝑛𝑜𝑝𝑞𝑟𝑠𝑡𝑢𝑣𝑤𝑥𝑦𝑧
# 𝒶𝒷𝒸𝒹𝒻𝒽𝒾𝒿𝓀𝓁𝓂𝓃𝓅𝓆𝓇𝓈𝓉𝓊𝓋𝓌𝓍𝓎𝓏
# 𝒜𝒞𝒟𝒢𝒥𝒦𝒩𝒪𝒫𝒬𝒮𝒯𝒰𝒱𝒲𝒳𝒴𝒵
# 𝚤𝚥𝚨𝚩𝚬𝚭𝚮𝚰𝚱𝚳𝚴𝚶𝚸𝚹𝚻𝚾𝛂𝛅𝛆𝛈𝛊𝛋𝛎𝛐𝛒𝛔𝛕𝛖𝛚𝛜𝛢𝛣𝛦𝛧𝛨𝛪𝛫𝛭𝛮𝛰𝛲𝛵𝛸𝛼𝛿𝜀𝜄𝜅𝜈𝜊𝜏𝜐𝜔𝜖
# 𝜜𝜝𝜠𝜡𝜢𝜤𝜥𝜧𝜨𝜪𝜬𝜯𝜲𝜶𝜹𝜺𝜾𝜿𝝂𝝄𝝊𝝐𝝖𝝗𝝚𝝛𝝜𝝞𝝟𝝡𝝢𝝤𝝦𝝩𝝪𝝬
# 𝝰𝝴𝝸𝝹𝝼𝝾𝞃𝞄𝞊𝞐𝞑𝞔𝞕𝞖𝞘𝞙𝞛𝞜𝞞𝞠𝞣𝞤𝞦𝞪𝞬𝞮𝞲𝞳𝞶𝞸𝞺𝞽𝞾𝟆𝟊𝟋
# " > /dev/null

declare -A ca # associative character array

# code to generate the assignment of the ca array
# orig="" # "0123456789" "abcdefghijklmnopqrstuvwxyz" "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
# for trans in ""
# do
#     for i in $(seq 0 $((${#orig} -1)))
#     do
#         c="${orig:$i:1}"
#         ca[$c]+="${trans:$i:1}"
#     done
# done
# for i in $(seq 0 $((${#orig} -1)))
# do
#     c="${orig:$i:1}"
#     echo -n "ca[$c]+=\"${ca[$c]}\"; "
# done
# exit 253

# numbers
ca[0]+="𝟎𝟘𝟢𝟬𝟶０𐒆"; ca[1]+="𝟏𝟙𝟣𝟭𝟷１⒈"; ca[2]+="𝟐𝟚𝟤𝟮𝟸２⒉"; ca[3]+="𝟑𝟛𝟥𝟯𝟹３⒊"; ca[4]+="𝟒𝟜𝟦𝟰𝟺４⒋"; ca[5]+="𝟓𝟝𝟧𝟱𝟻５⒌"; ca[6]+="𝟔𝟞𝟨𝟲𝟼６⒍"; ca[7]+="𝟕𝟟𝟩𝟳𝟽７⒎"; ca[8]+="𝟖𝟠𝟪𝟴𝟾８⒏"; ca[9]+="𝟗𝟡𝟫𝟵𝟿９⒐"
# ca[0]+="₀⁰"; ca[1]+="₁¹"; ca[2]+="₂²"; ca[3]+="₃³"; ca[4]+="₄⁴"; ca[5]+="₅⁵"; ca[6]+="₆⁶"; ca[7]+="₇⁷"; ca[8]+="₈⁸"; ca[9]+="₉⁹"
# ca[1]+="①⑴"; ca[2]+="②⑵"; ca[3]+="③⑶"; ca[4]+="④⑷"; ca[5]+="⑤⑸"; ca[6]+="⑥⑹"; ca[7]+="⑦⑺"; ca[8]+="⑧⑻"; ca[9]+="⑨⑼"

# characters
ca[a]+="𝐚𝒂𝖺𝗮𝘢𝙖𝚊"; ca[b]+="𝐛𝒃𝖻𝗯𝘣𝙗𝚋"; ca[c]+="𝐜𝒄𝖼𝗰𝘤𝙘𝚌"; ca[d]+="𝐝𝒅𝖽𝗱𝘥𝙙𝚍"; ca[e]+="𝐞𝒆𝖾𝗲𝘦𝙚𝚎"; ca[f]+="𝐟𝒇𝖿𝗳𝘧𝙛𝚏"; ca[g]+="𝐠𝒈𝗀𝗴𝘨𝙜𝚐"; ca[h]+="𝐡𝒉𝗁𝗵𝘩𝙝𝚑"; ca[i]+="𝐢𝒊𝗂𝗶𝘪𝙞𝚒"; ca[j]+="𝐣𝒋𝗃𝗷𝘫𝙟𝚓"; ca[k]+="𝐤𝒌𝗄𝗸𝘬𝙠𝚔"; ca[l]+="𝐥𝒍𝗅𝗹𝘭𝙡𝚕"; ca[m]+="𝐦𝒎𝗆𝗺𝘮𝙢𝚖"; ca[n]+="𝐧𝒏𝗇𝗻𝘯𝙣𝚗"; ca[o]+="𝐨𝒐𝗈𝗼𝘰𝙤𝚘"; ca[p]+="𝐩𝒑𝗉𝗽𝘱𝙥𝚙"; ca[q]+="𝐪𝒒𝗊𝗾𝘲𝙦𝚚"; ca[r]+="𝐫𝒓𝗋𝗿𝘳𝙧𝚛"; ca[s]+="𝐬𝒔𝗌𝘀𝘴𝙨𝚜"; ca[t]+="𝐭𝒕𝗍𝘁𝘵𝙩𝚝"; ca[u]+="𝐮𝒖𝗎𝘂𝘶𝙪𝚞"; ca[v]+="𝐯𝒗𝗏𝘃𝘷𝙫𝚟"; ca[w]+="𝐰𝒘𝗐𝘄𝘸𝙬𝚠"; ca[x]+="𝐱𝒙𝗑𝘅𝘹𝙭𝚡"; ca[y]+="𝐲𝒚𝗒𝘆𝘺𝙮𝚢"; ca[z]+="𝐳𝒛𝗓𝘇𝘻𝙯𝚣"; ca[A]+="𝐀𝑨𝖠𝗔𝘈𝘼𝙰"; ca[B]+="𝐁𝑩𝖡𝗕𝘉𝘽𝙱"; ca[C]+="𝐂𝑪𝖢𝗖𝘊𝘾𝙲"; ca[D]+="𝐃𝑫𝖣𝗗𝘋𝘿𝙳"; ca[E]+="𝐄𝑬𝖤𝗘𝘌𝙀𝙴"; ca[F]+="𝐅𝑭𝖥𝗙𝘍𝙁𝙵"; ca[G]+="𝐆𝑮𝖦𝗚𝘎𝙂𝙶"; ca[H]+="𝐇𝑯𝖧𝗛𝘏𝙃𝙷"; ca[I]+="𝐈𝑰𝖨𝗜𝘐𝙄𝙸"; ca[J]+="𝐉𝑱𝖩𝗝𝘑𝙅𝙹"; ca[K]+="𝐊𝑲𝖪𝗞𝘒𝙆𝙺"; ca[L]+="𝐋𝑳𝖫𝗟𝘓𝙇𝙻"; ca[M]+="𝐌𝑴𝖬𝗠𝘔𝙈𝙼"; ca[N]+="𝐍𝑵𝖭𝗡𝘕𝙉𝙽"; ca[O]+="𝐎𝑶𝖮𝗢𝘖𝙊𝙾"; ca[P]+="𝐏𝑷𝖯𝗣𝘗𝙋𝙿"; ca[Q]+="𝐐𝑸𝖰𝗤𝘘𝙌𝚀"; ca[R]+="𝐑𝑹𝖱𝗥𝘙𝙍𝚁"; ca[S]+="𝐒𝑺𝖲𝗦𝘚𝙎𝚂"; ca[T]+="𝐓𝑻𝖳𝗧𝘛𝙏𝚃"; ca[U]+="𝐔𝑼𝖴𝗨𝘜𝙐𝚄"; ca[V]+="𝐕𝑽𝖵𝗩𝘝𝙑𝚅"; ca[W]+="𝐖𝑾𝖶𝗪𝘞𝙒𝚆"; ca[X]+="𝐗𝑿𝖷𝗫𝘟𝙓𝚇"; ca[Y]+="𝐘𝒀𝖸𝗬𝘠𝙔𝚈"; ca[Z]+="𝐙𝒁𝖹𝗭𝘡𝙕𝚉"
ca[a]+="ａ"; ca[b]+="ｂ"; ca[c]+="ｃ"; ca[d]+="ｄ"; ca[e]+="ｅ"; ca[f]+="ｆ"; ca[g]+="ｇ"; ca[h]+="ｈ"; ca[i]+="ｉ"; ca[j]+="ｊ"; ca[k]+="ｋ"; ca[l]+="ｌ"; ca[m]+="ｍ"; ca[n]+="ｎ"; ca[o]+="ｏ"; ca[p]+="ｐ"; ca[q]+="ｑ"; ca[r]+="ｒ"; ca[s]+="ｓ"; ca[t]+="ｔ"; ca[u]+="ｕ"; ca[v]+="ｖ"; ca[w]+="ｗ"; ca[x]+="ｘ"; ca[y]+="ｙ"; ca[z]+="ｚ"; ca[A]+="Ａ"; ca[B]+="Ｂ"; ca[C]+="Ｃ"; ca[D]+="Ｄ"; ca[E]+="Ｅ"; ca[F]+="Ｆ"; ca[G]+="Ｇ"; ca[H]+="Ｈ"; ca[I]+="Ｉ"; ca[J]+="Ｊ"; ca[K]+="Ｋ"; ca[L]+="Ｌ"; ca[M]+="Ｍ"; ca[N]+="Ｎ"; ca[O]+="Ｏ"; ca[P]+="Ｐ"; ca[Q]+="Ｑ"; ca[R]+="Ｒ"; ca[S]+="Ｓ"; ca[T]+="Ｔ"; ca[U]+="Ｕ"; ca[V]+="Ｖ"; ca[W]+="Ｗ"; ca[X]+="Ｘ"; ca[Y]+="Ｙ"; ca[Z]+="Ｚ"
# ca[a]+="𝓪𝖆"; ca[b]+="𝓫𝖇"; ca[c]+="𝓬𝖈"; ca[d]+="𝓭𝖉"; ca[e]+="𝓮𝖊"; ca[f]+="𝓯𝖋"; ca[g]+="𝓰𝖌"; ca[h]+="𝓱𝖍"; ca[i]+="𝓲𝖎"; ca[j]+="𝓳𝖏"; ca[k]+="𝓴𝖐"; ca[l]+="𝓵𝖑"; ca[m]+="𝓶𝖒"; ca[n]+="𝓷𝖓"; ca[o]+="𝓸𝖔"; ca[p]+="𝓹𝖕"; ca[q]+="𝓺𝖖"; ca[r]+="𝓻𝖗"; ca[s]+="𝓼𝖘"; ca[t]+="𝓽𝖙"; ca[u]+="𝓾𝖚"; ca[v]+="𝓿𝖛"; ca[w]+="𝔀𝖜"; ca[x]+="𝔁𝖝"; ca[y]+="𝔂𝖞"; ca[z]+="𝔃𝖟"; ca[A]+="𝓐𝕬"; ca[B]+="𝓑𝕭"; ca[C]+="𝓒𝕮"; ca[D]+="𝓓𝕯"; ca[E]+="𝓔𝕰"; ca[F]+="𝓕𝕱"; ca[G]+="𝓖𝕲"; ca[H]+="𝓗𝕳"; ca[I]+="𝓘𝕴"; ca[J]+="𝓙𝕵"; ca[K]+="𝓚𝕶"; ca[L]+="𝓛𝕷"; ca[M]+="𝓜𝕸"; ca[N]+="𝓝𝕹"; ca[O]+="𝓞𝕺"; ca[P]+="𝓟𝕻"; ca[Q]+="𝓠𝕼"; ca[R]+="𝓡𝕽"; ca[S]+="𝓢𝕾"; ca[T]+="𝓣𝕿"; ca[U]+="𝓤𝖀"; ca[V]+="𝓥𝖁"; ca[W]+="𝓦𝖂"; ca[X]+="𝓧𝖃"; ca[Y]+="𝓨𝖄"; ca[Z]+="𝓩𝖅"
# ca[a]+="ⓐ"; ca[b]+="ⓑ"; ca[c]+="ⓒ"; ca[d]+="ⓓ"; ca[e]+="ⓔ"; ca[f]+="ⓕ"; ca[g]+="ⓖ"; ca[h]+="ⓗ"; ca[i]+="ⓘ"; ca[j]+="ⓙ"; ca[k]+="ⓚ"; ca[l]+="ⓛ"; ca[m]+="ⓜ"; ca[n]+="ⓝ"; ca[o]+="ⓞ"; ca[p]+="ⓟ"; ca[q]+="ⓠ"; ca[r]+="ⓡ"; ca[s]+="ⓢ"; ca[t]+="ⓣ"; ca[u]+="ⓤ"; ca[v]+="ⓥ"; ca[w]+="ⓦ"; ca[x]+="ⓧ"; ca[y]+="ⓨ"; ca[z]+="ⓩ"; ca[A]+="Ⓐ"; ca[B]+="Ⓑ"; ca[C]+="Ⓒ"; ca[D]+="Ⓓ"; ca[E]+="Ⓔ"; ca[F]+="Ⓕ"; ca[G]+="Ⓖ"; ca[H]+="Ⓗ"; ca[I]+="Ⓘ"; ca[J]+="Ⓙ"; ca[K]+="Ⓚ"; ca[L]+="Ⓛ"; ca[M]+="Ⓜ"; ca[N]+="Ⓝ"; ca[O]+="Ⓞ"; ca[P]+="Ⓟ"; ca[Q]+="Ⓠ"; ca[R]+="Ⓡ"; ca[S]+="Ⓢ"; ca[T]+="Ⓣ"; ca[U]+="Ⓤ"; ca[V]+="Ⓥ"; ca[W]+="Ⓦ"; ca[X]+="Ⓧ"; ca[Y]+="Ⓨ"; ca[Z]+="Ⓩ"

# german umlaute and ß
ca[ä]+="ȁǟãāæ"; ca[ö]+="őō"; ca[ü]+="űūǘǚ"
ca[Ä]+="ÆÃǞȀ"; ca[Ö]+="ŐŌ"; ca[Ü]+="ŰŪǗǙ"
ca[ß]+="ẞ"

# additional characters
ca[a]+="ḁ𝛂𝛼𝜶𝕒𝑎"; ca[b]+="ḃḅḇ"; ca[c]+="ḉ𝑐𝕔𝒸"; ca[d]+="ḋḍḏḑḓⅆ"
ca[e]+="ĕėęǝɘəḝḙẹẻẽḕḗḙḛḝ℮ℯⅇ"; ca[f]+="ḟſ𝑓"; ca[g]+="ḡ𝑔𝕘"; ca[h]+="ḣḥḧḩḫ"
ca[i]+="ïîíìḭịḭḯⅈ𝚤"; ca[j]+="𝕛ⅉ𝚥𝒿"; ca[k]+="ḱḳḵ𝕜𝑘"; ca[l]+="ĺɭʅḻḽ𝕝"
ca[m]+="ḿṁṃ"; ca[n]+="ṅṇṉṋ"; ca[o]+="ṍṑṓø"; ca[p]+="ṕṗ𝕡𝑝"
ca[q]+="𝕢𝓆𝑞"; ca[r]+="ṙṛṝṟ"; ca[s]+="ṡṣṥṧṩ"; ca[t]+="ṫṭṯṱ"
ca[u]+="ṳṵṷṹṻ"; ca[v]+="ṽṿ𝑣𝕧"; ca[w]+="ẁẃẅẇẉ"; ca[x]+="ẋẍ𝕩𝑥"
ca[y]+="ẏ𝑦𝕪"; ca[z]+="ẑẓẕ"
ca[A]+="Ḁ𝒜𝐴𝔸"; ca[B]+="ḂḄḆℬ"; ca[C]+="Ḉ𝒞𝐶"; ca[D]+="ḊḌḎḐḒⅅ𝒟"
ca[E]+="ℰƐḔḖḘḚḜ"; ca[F]+="ℱƑḞꜰ"; ca[G]+="Ḡ𝐺𝔾"; ca[H]+="ḢḤḦḨḪ"
ca[I]+="İḬḮ𝐼"; ca[J]+="𝕁𝐽"; ca[K]+="ḰḲḴ"; ca[L]+="ḶḸḺḼ"
ca[M]+="ḾṀṂℳ"; ca[N]+="ṄṆṈṊ"; ca[O]+="ṌṐṒ"; ca[P]+="ṔṖ𝑃"
ca[Q]+="𝑄"; ca[R]+="ṘṚṜṞℝ"; ca[S]+="ṠṢṤṦṨ"; ca[T]+="ṪṬ𝑇𝕋"
ca[U]+="ṴṶ𝒰"; ca[V]+="ṼṾ𝒱𝑉𝕍"; ca[W]+="ẀẂẄẆẈ"; ca[X]+="ẊẌ𝒳"
ca[Y]+="Ẏ𝒴𝕐𝑌"; ca[Z]+="ẐẒẔℤ"


sel1r() { # select one random character from the argument string
    arg="$*"
    pos="$(($RANDOM%${#arg}))"
    echo "${arg:$pos:1}"
}

transform() {
    arg="$*"
    i='-1'
    while [ $((++i)) -lt ${#arg} ]
    do
        c="${arg:$i:1}" # one character from the input string
        rc="${ca[$c]}" # set of replace characters
        if [ "$rc" = "" ]
        then
            # replace characters that cannot be used in the array $ca
            case "$c" in
                "@") rc="＠";;
                # use tr for these: "!§$%?=().:,;-_
                # ！＂＃＄％＆＇（）＊＋，－．／：；＜＝＞？＿［＼］＾｛｜｝～
                *) rc="$c";; # no replacement defined
            esac
        fi
        echo -n "$(sel1r "$rc")"
    done
    echo ""
}


# if files are specified use them, if nothing is specified use stdin
infile=""
if [ "$1" ]
then
    while [ -f "$1" ]
    do
        infile="$infile $1"
        shift
    done
else
    infile="/dev/stdin"
fi

# transform files or commandline arguments line by line
if [ -n "$infile" ]
then
    cat $infile
else
    echo "$*"
fi | while read line
do
    transform "$line"
done

