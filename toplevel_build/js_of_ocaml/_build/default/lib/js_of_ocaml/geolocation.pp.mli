Caml1999N029����          	   ?lib/js_of_ocaml/geolocation.mli����  k  �  u  m�����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���*ppx_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����"::�����������,library-name�@�@@����+js_of_ocaml��.<command-line>A@A�A@L@@��A@@�A@M@@@@�@@�������@�@@@�@@�@@@@�@@@�@�������*ocaml.text��������
  " Geolocation API

  A code example:
  {[
  if (Geolocation.is_supported()) then
    let geo = Geolocation.geolocation in
    let options = Geolocation.empty_position_options() in
    let () = options##.enableHighAccuracy := true in
    let f_success pos =
      let coords = pos##.coords in
      let latitude = coords##.latitude in
      Firebug.console##debug latitude ;
    in
    let f_error err =
      let code = err##.code in
      let msg = err##.message in
      if code = err##._TIMEOUT then Firebug.console##debug(msg)
    in
    geo##getCurrentPosition (Js.wrap_callback f_success) (Js.wrap_callback f_error) options
  ]}
  @see <https://developer.mozilla.org/en-US/docs/Web/API/Geolocation> for API documentation.
  @see <http://www.w3.org/TR/geolocation-API/> for the W3C Recommendation. ��?lib/js_of_ocaml/geolocation.mliTgg�iA�@@@@@@���A�    �1positionErrorCode��k���k��@@@@A@@��k��@@�@���A�    �'watchId��m���m��@@@@A@@��m��@@�@�����A@�+coordinates��%o���&o��@����@��,p��@@@�����(latitude��4q���5q��@AA�����"Js-readonly_prop��>q���?q�@�����%float��Gq���Hq��@@�@@@@�@@@��Lq��@@�����)longitude��Ts�Us@AA�����"Js-readonly_prop��^s#�_s3@�����%float��gs�hs"@@�@@@@�@@@��ls
@@�����(altitude��tu5@�uu5H@AA�����"Js-readonly_prop��~u5X�u5h@������"Js#opt���u5Q��u5W@�����%float���u5K��u5P@@�@@@@�@@@@�@@@���u59@@�����(accuracy���wju��wj}@AA�����"Js-readonly_prop���wj���wj�@�����%float���wj���wj�@@�@@@@�@@@���wjn@@�����0altitudeAccuracy���y����y��@AA�����"Js-readonly_prop���y����y��@������"Js#opt���y����y��@�����%float���y����y��@@�@@@@�@@@@�@@@���y��@@�����'heading���{����{��@AA�����"Js-readonly_prop���{����{�@������"Js#opt��{���{��@�����%float��
{���{��@@�@@@@�@@@@�@@@��{��@@�����%speed��}	�}	@AA�����"Js-readonly_prop��"}	)�#}	9@������"Js#opt��-}	"�.}	(@�����%float��6}	�7}	!@@�@@@@�@@@@�@@@��<}	@@@��>p���?~:?@@��Ao��@@@�@�����A@�(position��K @AL�L @AT@����@��R AW_@@@�����&coords��Z B`k�[ B`q@AA�����"Js-readonly_prop��d B`��e B`�@������"Js!t��o B`��p B`�@�����+coordinates��x B`t�y B`@@�@@@@�@@@@�@@@��~ B`d@@�����)timestamp��� D���� D��@AA�����"Js-readonly_prop��� D���� D��@������"Js$date��� D���� D��@@�@@@@�@@@��� D��@@@��� AWY�� E��@@��� @AA@@@�@�����A@�/positionOptions��� G���� G��@����@��� H��@@@�����2enableHighAccuracy��� I���� I�	@AA�����"Js.writeonly_prop��� I�	�� I�	*@�����$bool��� I�	�� I�	@@�@@@@�@@@��� I��@@�����'timeout��� K	,	7�� K	,	>@AA�����"Js.writeonly_prop��� K	,	E�� K	,	V@�����#int��� K	,	A�� K	,	D@@�@@@@�@@@��� K	,	0@@�����*maximumAge��� M	X	c�� M	X	m@AA�����"Js.writeonly_prop�� M	X	t�	 M	X	�@�����#int�� M	X	p� M	X	s@@�@@@@�@@@�� M	X	\@@@�� H��� N	�	�@@�� G��@@@�@�����A@�-positionError��% P	�	��& P	�	�@����@��, Q	�	�@@@�����3_PERMISSION_DENIED_��4 R	�	��5 R	�	�@AA�����"Js-readonly_prop��> R	�	��? R	�	�@�����1positionErrorCode��G R	�	��H R	�	�@@�@@@@�@@@��L R	�	�@@�����6_POSITION_UNAVAILABLE_��T T	�
�U T	�
@AA�����"Js-readonly_prop��^ T	�
,�_ T	�
<@�����1positionErrorCode��g T	�
�h T	�
+@@�@@@@�@@@��l T	�	�@@�����(_TIMEOUT��t V
>
I�u V
>
Q@AA�����"Js-readonly_prop��~ V
>
f� V
>
v@�����1positionErrorCode��� V
>
T�� V
>
e@@�@@@@�@@@��� V
>
B@@�����$code��� X
x
��� X
x
�@AA�����"Js-readonly_prop��� X
x
��� X
x
�@�����1positionErrorCode��� X
x
��� X
x
�@@�@@@@�@@@��� X
x
|@@�����'message��� Z
�
��� Z
�
�@AA�����"Js-readonly_prop��� Z
�
��� Z
�
�@������"Js!t��� Z
�
��� Z
�
�@������"Js)js_string��� Z
�
��� Z
�
�@@�@@@@�@@@@�@@@��� Z
�
�@@@��� Q	�	��� [
�
�@@��� P	�	�@@@�@�����A@�+geolocation��� ]
�
��� ]
�@����@��� ^@@@�����2getCurrentPosition��� _�� _,@AA��@�����"Js(callback�� `/P� `/[@���@�����"Js!t�� `/B� `/F@�����(position�� `/9� `/A@@�@@@@�@@@����$unit��$ `/J�% `/N@@�@@@�@@@@��) `/8%@@@��@�����"Js(callback��4 a\��5 a\�@���@�����"Js!t��A a\t�B a\x@�����-positionError��J a\f�K a\s@@�@@@@�@@@����$unit��T a\|�U a\�@@�@@@�@@@@��Y a\e%@@@��@�����"Js!t��d b���e b��@�����/positionOptions��m b���n b��@@�@@@@�@@@�����"Js$meth��y c���z c��@�����$unit��� c���� c��@@�@@@@�@@@�@@@�/@@@�`@@@��� _@@�����-watchPosition��� e���� e��@AA��@�����"Js(callback��� f���� f�
@���@�����"Js!t��� f���� f��@�����(position��� f���� f��@@�@@@@�@@@����$unit��� f���� f��@@�@@@�@@@@��� f��%@@@��@�����"Js(callback��� g1�� g<@���@�����"Js!t��� g#�� g'@�����-positionError��� g�� g"@@�@@@@�@@@����$unit��� g+�� g/@@�@@@�@@@@��� g%@@@��@�����"Js!t��� h=V�� h=Z@�����/positionOptions�� h=F� h=U@@�@@@@�@@@�����"Js$meth�� i[l� i[s@�����'watchId�� i[d� i[k@@�@@@@�@@@�@@@�/@@@�`@@@��$ e��@@�����*clearWatch��, ku��- ku�@AA��@����'watchId��6 ku��7 ku�@@�@@@�����"Js$meth��A ku��B ku�@�����$unit��J ku��K ku�@@�@@@@�@@@�@@@��P kuy@@@��R ^�S l��@@��U ]
�
�@@@�@���Р6empty_position_options��^ n���_ n��@��@����$unit��h n���i n��@@�@@@�����"Js!t��s n���t n��@�����/positionOptions��| n���} n��@@�@@@@�@@@�@@@@@��� n��@�@���Р+geolocation��� p���� p��@�����"Js!t��� p��� p�	@�����+geolocation��� p���� p�@@�@@@@�@@@@@��� p��@�@���Р,is_supported��� r�� r@��@����$unit��� r�� r"@@�@@@����$bool��� r&�� r*@@�@@@�@@@@@��� r@�@@