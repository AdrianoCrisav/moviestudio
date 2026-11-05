.class public Lcom/android/videoeditor/OverlayTitleTemplatePicker;
.super Landroid/app/ListActivity;
.source "OverlayTitleTemplatePicker.java"


# static fields
.field public static final PARAM_MEDIA_ITEM_ID:Ljava/lang/String; = "media_item_id"

.field public static final PARAM_OVERLAY_ATTRIBUTES:Ljava/lang/String; = "attributes"

.field public static final PARAM_OVERLAY_ID:Ljava/lang/String; = "overlay_id"


# instance fields
.field private mAdapter:Lcom/android/videoeditor/OverlaysAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f04000c

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/OverlayTitleTemplatePicker;->setContentView(I)V

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/OverlayTitleTemplatePicker;->setFinishOnTouchOutside(Z)V

    .line 43
    new-instance v0, Lcom/android/videoeditor/OverlaysAdapter;

    invoke-virtual {p0}, Lcom/android/videoeditor/OverlayTitleTemplatePicker;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/videoeditor/OverlaysAdapter;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;)V

    iput-object v0, p0, Lcom/android/videoeditor/OverlayTitleTemplatePicker;->mAdapter:Lcom/android/videoeditor/OverlaysAdapter;

    .line 44
    iget-object v0, p0, Lcom/android/videoeditor/OverlayTitleTemplatePicker;->mAdapter:Lcom/android/videoeditor/OverlaysAdapter;

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/OverlayTitleTemplatePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 45
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 60
    iget-object v0, p0, Lcom/android/videoeditor/OverlayTitleTemplatePicker;->mAdapter:Lcom/android/videoeditor/OverlaysAdapter;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/videoeditor/OverlayTitleTemplatePicker;->mAdapter:Lcom/android/videoeditor/OverlaysAdapter;

    invoke-virtual {v0}, Lcom/android/videoeditor/OverlaysAdapter;->onDestroy()V

    .line 63
    :cond_0
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 68
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 69
    .local v1, "extras":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/videoeditor/OverlayTitleTemplatePicker;->mAdapter:Lcom/android/videoeditor/OverlaysAdapter;

    invoke-virtual {v3, p3}, Lcom/android/videoeditor/OverlaysAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/videoeditor/OverlayType;

    invoke-virtual {v3}, Lcom/android/videoeditor/OverlayType;->getType()I

    move-result v2

    .line 70
    .local v2, "overlayType":I
    const-string v3, ""

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/android/videoeditor/service/MovieOverlay;->buildUserAttributes(ILjava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 71
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "attributes"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 72
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1}, Lcom/android/videoeditor/OverlayTitleTemplatePicker;->setResult(ILandroid/content/Intent;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/videoeditor/OverlayTitleTemplatePicker;->finish()V

    .line 74
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 51
    iget-object v0, p0, Lcom/android/videoeditor/OverlayTitleTemplatePicker;->mAdapter:Lcom/android/videoeditor/OverlaysAdapter;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/videoeditor/OverlayTitleTemplatePicker;->mAdapter:Lcom/android/videoeditor/OverlaysAdapter;

    invoke-virtual {v0}, Lcom/android/videoeditor/OverlaysAdapter;->onPause()V

    .line 54
    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method
