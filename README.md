# terraform
1 Создали main.tf, output.tf, providers.tf, variables.tf
2 Подключили провайдера Яндекс-облака, через файл providers.tf инициализировали терраформ-провайдера
<img width="1167" height="545" alt="image" src="https://github.com/user-attachments/assets/a3b9ecbe-88c8-41df-9dd6-2456df4f28f2" />

3 Проверяем план работы провайдера

<img width="1142" height="730" alt="image" src="https://github.com/user-attachments/assets/ef603d0f-77ad-4861-8435-cc7b99ffb633" />

<img width="539" height="617" alt="image" src="https://github.com/user-attachments/assets/7876ca00-506a-413e-a942-4ef4ade868df" />

<img width="519" height="469" alt="image" src="https://github.com/user-attachments/assets/76d51b4b-df53-447a-9d1a-b05acdabb4f4" />

4 Запускаем выполнение кода проверяем работу
ВМ создалась
<img width="1775" height="60" alt="image" src="https://github.com/user-attachments/assets/1b4031b8-fdaa-4bf4-b9ea-f438fe62b776" />

В выводе получаем, те же IP что в консоли яндекса
<img width="671" height="265" alt="image" src="https://github.com/user-attachments/assets/ed47d3fb-8327-430c-b3ba-d705c41fde9f" />

5 Пробуем подключиться под пользователем, которого передали ранее
Пользователя, его пароль и ключ ssh передавали через файл cloud-init metadata.yaml. В репозитарий не выкладывается.

<img width="746" height="514" alt="image" src="https://github.com/user-attachments/assets/3dad8c32-8489-4de8-ab5d-94e66bd4892e" />

К нужной ВМ подлючились!
