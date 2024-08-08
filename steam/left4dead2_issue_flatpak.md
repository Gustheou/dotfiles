Não sei se o motivo dos problemas serem por conta da steam ter sido instalada via flatpak, e como o(s) problema(s) que encontrei foram na steam via flatpak, segue o guia.

# Issue: Jogo muito escuro

## Solução:

Adicionar o seguinte comando no 'launch options':

```
-novid -vulkan +mat_motion_blur_percent_of_screen_max 0
```
