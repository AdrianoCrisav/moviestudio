.class Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;
.super Ljava/lang/Object;
.source "MediaLinearLayout.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/videoeditor/widgets/MediaLinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaItemActionModeCallback"
.end annotation


# instance fields
.field private final mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

.field final synthetic this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;


# direct methods
.method public constructor <init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;Lcom/android/videoeditor/service/MovieMediaItem;)V
    .locals 0
    .param p2, "mediaItem"    # Lcom/android/videoeditor/service/MovieMediaItem;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    .line 120
    return-void
.end method

.method private applyEffect(Landroid/view/MenuItem;)V
    .locals 6
    .param p1, "clickedItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 280
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 281
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 283
    :pswitch_0
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2, v4, v4}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addEffect(ILjava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 285
    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 288
    :pswitch_1
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addEffect(ILjava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 290
    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 293
    :pswitch_2
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addEffect(ILjava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 295
    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 303
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/videoeditor/KenBurnsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 304
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "media_item_id"

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    const-string v1, "filename"

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    const-string v1, "width"

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 307
    const-string v1, "height"

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 308
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/16 v2, 0xd

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 281
    :pswitch_data_0
    .packed-switch 0x7f08004e
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 200
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v0, 0x7f08007c

    if-ne v2, v0, :vs_not_split

    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v0

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-static {v1, v0, v3}, Landroid/media/videoeditor/splitter;->clip(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    return v2

    :vs_not_split
    const v0, 0x7f080059

    if-ne v2, v0, :not_freeze

    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v0

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-static {v1, v0, v3}, Lcom/android/videoeditor/FreezeAction;->run(Landroid/content/Context;Lcom/android/videoeditor/service/VideoEditorProject;Lcom/android/videoeditor/service/MovieMediaItem;)V

    const/4 v2, 0x1

    return v2

    :not_freeze
    const v0, 0x7f08005a

    if-ne v2, v0, :not_rotate

    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v3

    const v2, 0x10000

    invoke-static {v1, v0, v3, v2}, Lcom/android/videoeditor/service/ApiService;->setMediaItemRenderingMode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v2, 0x1

    return v2

    :not_rotate
    const v0, 0x7f080077

    if-ne v2, v0, :not_fxmore

    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, p1}, Landroid/media/videoeditor/fxpicker;->show(Landroid/content/Context;Ljava/lang/String;Landroid/view/ActionMode;)V

    const/4 v2, 0x1

    return v2

    :not_fxmore
    const v0, 0x7f080063

    if-lt v2, v0, :not_more

    const v0, 0x7f080076

    if-gt v2, v0, :not_more

    invoke-interface {p2}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :fx_done

    const v0, 0x7f08005f

    sub-int v1, v2, v0

    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addEffect(ILjava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v2, 0x1

    invoke-interface {p2, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :fx_done
    const/4 v2, 0x1

    return v2

    :not_more
    const v0, 0x7f08005c

    if-ne v2, v0, :not_speed

    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v0

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-static {v1, v0, v3}, Lcom/android/videoeditor/SpeedAction;->run(Landroid/content/Context;Lcom/android/videoeditor/service/VideoEditorProject;Lcom/android/videoeditor/service/MovieMediaItem;)V

    const/4 v2, 0x1

    return v2

    :not_speed
    const v0, 0x7f08005d

    if-ne v2, v0, :not_reverse

    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v0

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-static {v1, v0, v3}, Lcom/android/videoeditor/ReverseAction;->run(Landroid/content/Context;Lcom/android/videoeditor/service/VideoEditorProject;Lcom/android/videoeditor/service/MovieMediaItem;)V

    const/4 v2, 0x1

    return v2

    :not_reverse
    const v0, 0x7f08005e

    if-ne v2, v0, :not_volume

    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v0

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-static {v1, v0, v3}, Lcom/android/videoeditor/VolumeAction;->run(Landroid/content/Context;Lcom/android/videoeditor/service/VideoEditorProject;Lcom/android/videoeditor/service/MovieMediaItem;)V

    const/4 v2, 0x1

    return v2

    :not_volume
    const v0, 0x7f08005f

    if-ne v2, v0, :not_xform

    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v0

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-static {v1, v0, v3}, Lcom/android/videoeditor/XformAction;->run(Landroid/content/Context;Lcom/android/videoeditor/service/VideoEditorProject;Lcom/android/videoeditor/service/MovieMediaItem;)V

    const/4 v2, 0x1

    return v2

    :not_xform
    const v0, 0x7f080061

    if-ne v2, v0, :not_pip

    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v0

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-static {v1, v0, v3}, Lcom/android/videoeditor/PipAction;->run(Landroid/content/Context;Lcom/android/videoeditor/service/VideoEditorProject;Lcom/android/videoeditor/service/MovieMediaItem;)V

    const/4 v2, 0x1

    return v2

    :not_pip
    packed-switch v2, :pswitch_data_0

    .line 264
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v2, 0x1

    return v2

    .line 202
    :pswitch_1
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-static {v2, v3}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$300(Lcom/android/videoeditor/widgets/MediaLinearLayout;Lcom/android/videoeditor/service/MovieMediaItem;)V

    goto :goto_0

    .line 207
    :pswitch_2
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-static {v2, v3}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$400(Lcom/android/videoeditor/widgets/MediaLinearLayout;Lcom/android/videoeditor/service/MovieMediaItem;)V

    goto :goto_0

    .line 212
    :pswitch_3
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v2

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/videoeditor/service/VideoEditorProject;->getPreviousMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v1

    .line 214
    .local v1, "prevMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v2, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$500(Lcom/android/videoeditor/widgets/MediaLinearLayout;Lcom/android/videoeditor/service/MovieMediaItem;)Z

    goto :goto_0

    .line 219
    .end local v1    # "prevMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :pswitch_4
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-static {v2, v3}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$500(Lcom/android/videoeditor/widgets/MediaLinearLayout;Lcom/android/videoeditor/service/MovieMediaItem;)Z

    goto :goto_0

    .line 227
    :pswitch_5
    invoke-direct {p0, p2}, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->applyEffect(Landroid/view/MenuItem;)V

    goto :goto_0

    .line 232
    :pswitch_6
    invoke-interface {p2}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 233
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 234
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "media_item_id"

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const/16 v3, 0xe

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 242
    .end local v0    # "bundle":Landroid/os/Bundle;
    :pswitch_7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 243
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v2, "media_item_id"

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v2, "rendering_mode"

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppRenderingMode()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 246
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const/16 v3, 0xc

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 252
    .end local v0    # "bundle":Landroid/os/Bundle;
    :pswitch_8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 253
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v2, "media_item_id"

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    goto/16 :goto_0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x7f080049
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 124
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v1, p1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$002(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 126
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 127
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0b0002

    invoke-virtual {v1, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 129
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 269
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$600(Lcom/android/videoeditor/widgets/MediaLinearLayout;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 270
    .local v0, "mediaItemView":Landroid/view/View;
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$700(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$800(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/widgets/HandleView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/videoeditor/widgets/HandleView;->endMove()V

    .line 272
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$900(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/widgets/HandleView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/videoeditor/widgets/HandleView;->endMove()V

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v1, v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1000(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/view/View;)V

    .line 275
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1100(Lcom/android/videoeditor/widgets/MediaLinearLayout;Z)V

    .line 276
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$002(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 277
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 13
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const v12, 0x7f080052

    const v11, 0x7f08004e

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 134
    iget-object v10, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v10}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/videoeditor/service/ApiService;->isProjectBeingEdited(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v10}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$200(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Z

    move-result v10

    if-nez v10, :cond_2

    move v3, v8

    .line 139
    .local v3, "enable":Z
    :goto_0
    iget-object v10, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v10}, Lcom/android/videoeditor/service/MovieMediaItem;->isImage()Z

    move-result v10

    if-nez v10, :cond_0

    .line 140
    invoke-interface {p2, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 141
    .local v5, "item":Landroid/view/MenuItem;
    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 142
    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 147
    .end local v5    # "item":Landroid/view/MenuItem;
    :cond_0
    iget-object v10, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v10}, Lcom/android/videoeditor/service/MovieMediaItem;->getEffect()Lcom/android/videoeditor/service/MovieEffect;

    move-result-object v2

    .line 148
    .local v2, "effect":Lcom/android/videoeditor/service/MovieEffect;
    if-eqz v2, :cond_3

    .line 149
    iget-object v10, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v10}, Lcom/android/videoeditor/service/MovieMediaItem;->getEffect()Lcom/android/videoeditor/service/MovieEffect;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/videoeditor/service/MovieEffect;->getType()I

    move-result v10

    const/4 v5, 0x4

    if-lt v10, v5, :vs_fx_old

    const/16 v5, 0x17

    if-gt v10, v5, :vs_fx_old

    const v5, 0x7f08005f

    add-int/2addr v5, v10

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    goto :goto_1

    :vs_fx_old
    packed-switch v10, :pswitch_data_0

    .line 163
    invoke-interface {p2, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 169
    .restart local v5    # "item":Landroid/view/MenuItem;
    :goto_1
    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 170
    const v10, 0x7f08004b

    invoke-interface {p2, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 174
    const v10, 0x7f080049

    invoke-interface {p2, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 175
    .local v0, "aomi":Landroid/view/MenuItem;
    iget-object v10, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v10}, Lcom/android/videoeditor/service/MovieMediaItem;->getOverlay()Lcom/android/videoeditor/service/MovieOverlay;

    move-result-object v10

    if-nez v10, :cond_4

    const v10, 0x7f090014

    :goto_2
    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 177
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 179
    const v10, 0x7f08004a

    invoke-interface {p2, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 180
    .local v7, "romi":Landroid/view/MenuItem;
    iget-object v10, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v10}, Lcom/android/videoeditor/service/MovieMediaItem;->getOverlay()Lcom/android/videoeditor/service/MovieOverlay;

    move-result-object v10

    if-eqz v10, :cond_5

    move v10, v8

    :goto_3
    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 181
    if-eqz v3, :cond_6

    iget-object v10, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v10}, Lcom/android/videoeditor/service/MovieMediaItem;->getOverlay()Lcom/android/videoeditor/service/MovieOverlay;

    move-result-object v10

    if-eqz v10, :cond_6

    move v10, v8

    :goto_4
    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 183
    const v10, 0x7f08004c

    invoke-interface {p2, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 184
    .local v1, "btmi":Landroid/view/MenuItem;
    iget-object v10, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v10}, Lcom/android/videoeditor/service/MovieMediaItem;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v10

    if-nez v10, :cond_7

    move v10, v8

    :goto_5
    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 185
    if-eqz v3, :cond_8

    iget-object v10, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v10}, Lcom/android/videoeditor/service/MovieMediaItem;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v10

    if-nez v10, :cond_8

    move v10, v8

    :goto_6
    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 187
    const v10, 0x7f08004d

    invoke-interface {p2, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 188
    .local v4, "etmi":Landroid/view/MenuItem;
    iget-object v10, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v10}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v10

    if-nez v10, :cond_9

    move v10, v8

    :goto_7
    invoke-interface {v4, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 189
    if-eqz v3, :cond_a

    iget-object v10, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v10}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v10

    if-nez v10, :cond_a

    move v10, v8

    :goto_8
    invoke-interface {v4, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 191
    const v10, 0x7f080053

    invoke-interface {p2, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 192
    .local v6, "rmmi":Landroid/view/MenuItem;
    iget-object v10, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v10}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/videoeditor/service/VideoEditorProject;->hasMultipleAspectRatios()Z

    move-result v10

    invoke-interface {v6, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 193
    if-eqz v3, :cond_1

    iget-object v10, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v10}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/videoeditor/service/VideoEditorProject;->hasMultipleAspectRatios()Z

    move-result v10

    if-eqz v10, :cond_1

    move v9, v8

    :cond_1
    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 195
    return v8

    .end local v0    # "aomi":Landroid/view/MenuItem;
    .end local v1    # "btmi":Landroid/view/MenuItem;
    .end local v2    # "effect":Lcom/android/videoeditor/service/MovieEffect;
    .end local v3    # "enable":Z
    .end local v4    # "etmi":Landroid/view/MenuItem;
    .end local v5    # "item":Landroid/view/MenuItem;
    .end local v6    # "rmmi":Landroid/view/MenuItem;
    .end local v7    # "romi":Landroid/view/MenuItem;
    :cond_2
    move v3, v9

    .line 134
    goto/16 :goto_0

    .line 151
    .restart local v2    # "effect":Lcom/android/videoeditor/service/MovieEffect;
    .restart local v3    # "enable":Z
    :pswitch_0
    invoke-interface {p2, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 152
    .restart local v5    # "item":Landroid/view/MenuItem;
    goto/16 :goto_1

    .line 154
    .end local v5    # "item":Landroid/view/MenuItem;
    :pswitch_1
    const v10, 0x7f08004f

    invoke-interface {p2, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 155
    .restart local v5    # "item":Landroid/view/MenuItem;
    goto/16 :goto_1

    .line 157
    .end local v5    # "item":Landroid/view/MenuItem;
    :pswitch_2
    const v10, 0x7f080050

    invoke-interface {p2, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 158
    .restart local v5    # "item":Landroid/view/MenuItem;
    goto/16 :goto_1

    .line 160
    .end local v5    # "item":Landroid/view/MenuItem;
    :pswitch_3
    const v10, 0x7f080051

    invoke-interface {p2, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 161
    .restart local v5    # "item":Landroid/view/MenuItem;
    goto/16 :goto_1

    .line 167
    .end local v5    # "item":Landroid/view/MenuItem;
    :cond_3
    invoke-interface {p2, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .restart local v5    # "item":Landroid/view/MenuItem;
    goto/16 :goto_1

    .line 175
    .restart local v0    # "aomi":Landroid/view/MenuItem;
    :cond_4
    const v10, 0x7f090015

    goto/16 :goto_2

    .restart local v7    # "romi":Landroid/view/MenuItem;
    :cond_5
    move v10, v9

    .line 180
    goto/16 :goto_3

    :cond_6
    move v10, v9

    .line 181
    goto/16 :goto_4

    .restart local v1    # "btmi":Landroid/view/MenuItem;
    :cond_7
    move v10, v9

    .line 184
    goto/16 :goto_5

    :cond_8
    move v10, v9

    .line 185
    goto/16 :goto_6

    .restart local v4    # "etmi":Landroid/view/MenuItem;
    :cond_9
    move v10, v9

    .line 188
    goto :goto_7

    :cond_a
    move v10, v9

    .line 189
    goto :goto_8

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
