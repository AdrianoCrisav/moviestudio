.class Lcom/android/videoeditor/widgets/OverlayLinearLayout$OverlayActionModeCallback;
.super Ljava/lang/Object;
.source "OverlayLinearLayout.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/videoeditor/widgets/OverlayLinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverlayActionModeCallback"
.end annotation


# instance fields
.field private final mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

.field final synthetic this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;


# direct methods
.method public constructor <init>(Lcom/android/videoeditor/widgets/OverlayLinearLayout;Lcom/android/videoeditor/service/MovieMediaItem;)V
    .locals 0
    .param p2, "mediaItem"    # Lcom/android/videoeditor/service/MovieMediaItem;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$OverlayActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p2, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$OverlayActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    .line 94
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 121
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 149
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 123
    :sswitch_0
    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$OverlayActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-virtual {v4}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 124
    .local v0, "activity":Landroid/app/Activity;
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/android/videoeditor/OverlayTitleEditor;

    invoke-direct {v2, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "media_item_id"

    iget-object v5, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$OverlayActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$OverlayActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getOverlay()Lcom/android/videoeditor/service/MovieOverlay;

    move-result-object v3

    .line 128
    .local v3, "overlay":Lcom/android/videoeditor/service/MovieOverlay;
    const-string v4, "overlay_id"

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieOverlay;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const-string v4, "attributes"

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieOverlay;->buildUserAttributes()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 131
    const/16 v4, 0xc

    invoke-virtual {v0, v2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 137
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "overlay":Lcom/android/videoeditor/service/MovieOverlay;
    :sswitch_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 138
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v4, "media_item_id"

    iget-object v5, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$OverlayActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$OverlayActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-virtual {v4}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    const/16 v5, 0xd

    invoke-virtual {v4, v5, v1}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 121
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f08004a -> :sswitch_1
        0x7f080055 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 98
    iget-object v1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$OverlayActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v1, p1}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$002(Lcom/android/videoeditor/widgets/OverlayLinearLayout;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 100
    iget-object v1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$OverlayActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-virtual {v1}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 101
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0b0003

    invoke-virtual {v1, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 102
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 154
    iget-object v1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$OverlayActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    iget-object v2, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$OverlayActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$300(Lcom/android/videoeditor/widgets/OverlayLinearLayout;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 155
    .local v0, "overlayView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 156
    iget-object v1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$OverlayActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$400(Lcom/android/videoeditor/widgets/OverlayLinearLayout;Landroid/view/View;Z)V

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$OverlayActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$002(Lcom/android/videoeditor/widgets/OverlayLinearLayout;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 160
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    .line 107
    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$OverlayActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v4}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$100(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->isProjectBeingEdited(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$OverlayActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v4}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$200(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v3

    .line 110
    .local v0, "enable":Z
    :goto_0
    const v4, 0x7f080055

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 111
    .local v1, "eomi":Landroid/view/MenuItem;
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 113
    const v4, 0x7f08004a

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 114
    .local v2, "romi":Landroid/view/MenuItem;
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 116
    return v3

    .line 107
    .end local v0    # "enable":Z
    .end local v1    # "eomi":Landroid/view/MenuItem;
    .end local v2    # "romi":Landroid/view/MenuItem;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
