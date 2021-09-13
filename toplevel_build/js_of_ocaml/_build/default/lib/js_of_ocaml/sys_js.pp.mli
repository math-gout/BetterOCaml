Caml1999N029����            :lib/js_of_ocaml/sys_js.mli����  �    �  ������1ocaml.ppx.context��&_none_@@ �A����������)tool_name���*ppx_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����"::�����������,library-name�@�@@����+js_of_ocaml��.<command-line>A@A�A@L@@��A@@�A@M@@@@�@@�������@�@@@�@@�@@@@�@@@�@�������*ocaml.text��������	$ Javascript specific Sys functions. ��:lib/js_of_ocaml/sys_js.mliTbb�Tb�@@@@@@�����������) {2 Io.} ��V���V��@@@@@@���Р3set_channel_flusher��X���X��@��@����+out_channel��#X���$X��@@�@@@��@��@����&string��0X���1X��@@�@@@����$unit��9X���:X��@@�@@@�@@@����$unit��CX���DX��@@�@@@��GX��@@@�&@@@@���)ocaml.doc�������	� Set a callback to be called when an out_channel flush its buffer.
      [set_channel_flusher chan cb] install the callback [cb] for [chan] out_channel.
      [cb] will be called with the string to flush. ��VY���W[{�@@@@@@@��YX��@�@���Р2set_channel_filler��b]���c]��@��@����*in_channel��l]���m]��@@�@@@��@��@����$unit��y]���z]��@@�@@@����&string���]����]��@@�@@@�@@@����$unit���]����]��@@�@@@���]��@@@�&@@@@��I�������	� Set a callback to be called when an in_channel wants to fill its
      buffer. [set_channel_filler chan cb] install the called [cb] for
      [chan] in_channel. The string returned by [cb] will be appended
      to the channel buffer. ���^����a��@@@@@@@���]��@�@������������8 {2 Pseudo filesystem.} ���c����c�@@@@@@���Р+mount_point���e	��e@��@����$unit���e��e@@�@@@����$list���e&��e*@�����&string���e��e%@@�@@@@�@@@�@@@@@���e@�@���Р'unmount���g,0��g,7@���$path����&string���g,?��g,E@@�@@@����$unit���g,I��g,M@@�@@@���g,:@@@@@���g,,@�@���Р%mount��iOS�iOX@���$path����&string��iO`�iOf@@�@@@��@���&prefix����&string��"iOr�#iOx@@�@@@���$path����&string��/iO��0iO�@@�@@@����&option��8iO��9iO�@�����&string��AiO��BiO�@@�@@@@�@@@��FiO|@@@��HiOk@@@����$unit��OiO��PiO�@@�@@@��SiOj@@@��UiO[@@@@���������
  � Register a callback to the [path] to dynamically load missing files.
      Whenever a file is missing in [path], the callback is used to optionally
      get the content of the file.
      [mount ~path f] register the callback [f] to the path [path].
      The callback [f] receives [(prefix,suffix)] where:
       - [prefix] is the path the function has been registered to.
       - [Filename.contact prefix suffix] is the absolute filename .��aj���bpc@@@@@@@��diOO@�@���Р)read_file��mrei�nrer@���$name����&string��yrez�zre�@@�@@@����&string���re���re�@@�@@@���reu@@@@��>�������	o [read_file name] returns the content of the file [name].
      Raise [Not_found] if the file does not exists. ���s����t��@@@@@@@���ree@�@���Р+create_file���v		��v		@���$name����&string���v		��v		@@�@@@���'content����&string���v		*��v		0@@�@@@����$unit���v		4��v		8@@�@@@���v		"@@@���v		@@@@��~�������	� Register a file to a Pseudo Filesystem.
      [create_file ~name ~content] register the file [name] with content [content]
      so it can be be opened with [open_in name] ���w	9	9��y	�	�@@@@@@@���v		@�@���Р+update_file���{	�	���{	�	�@���$name����&string���{	�
��{	�

@@�@@@���'content����&string���{	�
��{	�
@@�@@@����$unit�� {	�
 �{	�
$@@�@@@��{	�
@@@��{	�	�@@@@����������	z Update a file in the Pseudo Filesystem.
      [update_file ~name ~content] update the file [name] with content [content] ��|
%
%�}
Q
�@@@@@@@��{	�	�@�@����&�������2 {2 Information.} ��$
�
��%
�
�@@@@@@���Р3js_of_ocaml_version��- A
�
��. A
�
�@����&string��5 A
�
��6 A
�
�@@�@@@@�������
  @ [js_of_ocaml_version] is the version of Js_of_ocaml.
      It is a string of the form ["major.minor[.patchlevel][+additional-info]"],
      where [major], [minor], and [patchlevel] are integers, and
      [additional-info] is an arbitrary string. The [[.patchlevel]] and
      [[+additional-info]] parts may be absent. ��C B
�
��D F�%@@@@@@@��F A
�
�@�@@