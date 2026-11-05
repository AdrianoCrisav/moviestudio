.class Lcom/android/videoeditor/ProjectsActivity$7;
.super Ljava/lang/Object;
.source "ProjectsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/ProjectsActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/ProjectsActivity;

.field final synthetic val$projectPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/ProjectsActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/videoeditor/ProjectsActivity$7;->this$0:Lcom/android/videoeditor/ProjectsActivity;

    iput-object p2, p0, Lcom/android/videoeditor/ProjectsActivity$7;->val$projectPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/videoeditor/ProjectsActivity$7;->this$0:Lcom/android/videoeditor/ProjectsActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/ProjectsActivity;->removeDialog(I)V

    .line 239
    iget-object v0, p0, Lcom/android/videoeditor/ProjectsActivity$7;->this$0:Lcom/android/videoeditor/ProjectsActivity;

    iget-object v1, p0, Lcom/android/videoeditor/ProjectsActivity$7;->val$projectPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/videoeditor/ProjectsActivity;->access$500(Lcom/android/videoeditor/ProjectsActivity;Ljava/lang/String;)V

    .line 240
    return-void
.end method
