.class Lcom/android/videoeditor/widgets/MediaLinearLayout$TransitionActionModeCallback;
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
    name = "TransitionActionModeCallback"
.end annotation


# instance fields
.field private final mTransition:Lcom/android/videoeditor/service/MovieTransition;

.field final synthetic this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;


# direct methods
.method public constructor <init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;Lcom/android/videoeditor/service/MovieTransition;)V
    .locals 0
    .param p2, "transition"    # Lcom/android/videoeditor/service/MovieTransition;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$TransitionActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    iput-object p2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$TransitionActionModeCallback;->mTransition:Lcom/android/videoeditor/service/MovieTransition;

    .line 327
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 356
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 375
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 358
    :pswitch_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 359
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "transition_id"

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$TransitionActionModeCallback;->mTransition:Lcom/android/videoeditor/service/MovieTransition;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieTransition;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$TransitionActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 366
    .end local v0    # "bundle":Landroid/os/Bundle;
    :pswitch_1
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$TransitionActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$TransitionActionModeCallback;->mTransition:Lcom/android/videoeditor/service/MovieTransition;

    invoke-static {v1, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1300(Lcom/android/videoeditor/widgets/MediaLinearLayout;Lcom/android/videoeditor/service/MovieTransition;)V

    goto :goto_0

    .line 356
    nop

    :pswitch_data_0
    .packed-switch 0x7f080057
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 331
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$TransitionActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v1, p1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1202(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 333
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$TransitionActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 334
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0b0005

    invoke-virtual {v1, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 335
    const v1, 0x7f09002b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 337
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 380
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$TransitionActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$TransitionActionModeCallback;->mTransition:Lcom/android/videoeditor/service/MovieTransition;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieTransition;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1400(Lcom/android/videoeditor/widgets/MediaLinearLayout;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 381
    .local v0, "transitionView":Landroid/view/View;
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$TransitionActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v1, v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1000(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/view/View;)V

    .line 382
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$TransitionActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1100(Lcom/android/videoeditor/widgets/MediaLinearLayout;Z)V

    .line 383
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$TransitionActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1202(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 384
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    .line 342
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$TransitionActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v4}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->isProjectBeingEdited(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$TransitionActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v4}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$200(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v3

    .line 345
    .local v0, "enable":Z
    :goto_0
    const v4, 0x7f080057

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 346
    .local v1, "etmi":Landroid/view/MenuItem;
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 348
    const v4, 0x7f080058

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 349
    .local v2, "rtmi":Landroid/view/MenuItem;
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 351
    return v3

    .line 342
    .end local v0    # "enable":Z
    .end local v1    # "etmi":Landroid/view/MenuItem;
    .end local v2    # "rtmi":Landroid/view/MenuItem;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
