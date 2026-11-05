.class Lcom/android/videoeditor/ProjectsActivity$1;
.super Lcom/android/videoeditor/service/ApiServiceListener;
.source "ProjectsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/videoeditor/ProjectsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/ProjectsActivity;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/ProjectsActivity;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/videoeditor/ProjectsActivity$1;->this$0:Lcom/android/videoeditor/ProjectsActivity;

    invoke-direct {p0}, Lcom/android/videoeditor/service/ApiServiceListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProjectsLoaded(Ljava/util/List;Ljava/lang/Exception;)V
    .locals 4
    .param p2, "exception"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/videoeditor/service/VideoEditorProject;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "projects":Ljava/util/List;, "Ljava/util/List<Lcom/android/videoeditor/service/VideoEditorProject;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/videoeditor/ProjectsActivity$1;->this$0:Lcom/android/videoeditor/ProjectsActivity;

    invoke-static {v0, p1}, Lcom/android/videoeditor/ProjectsActivity;->access$002(Lcom/android/videoeditor/ProjectsActivity;Ljava/util/List;)Ljava/util/List;

    .line 83
    iget-object v0, p0, Lcom/android/videoeditor/ProjectsActivity$1;->this$0:Lcom/android/videoeditor/ProjectsActivity;

    new-instance v1, Lcom/android/videoeditor/ProjectPickerAdapter;

    iget-object v2, p0, Lcom/android/videoeditor/ProjectsActivity$1;->this$0:Lcom/android/videoeditor/ProjectsActivity;

    iget-object v3, p0, Lcom/android/videoeditor/ProjectsActivity$1;->this$0:Lcom/android/videoeditor/ProjectsActivity;

    invoke-virtual {v3}, Lcom/android/videoeditor/ProjectsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lcom/android/videoeditor/ProjectPickerAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/android/videoeditor/ProjectsActivity;->access$102(Lcom/android/videoeditor/ProjectsActivity;Lcom/android/videoeditor/ProjectPickerAdapter;)Lcom/android/videoeditor/ProjectPickerAdapter;

    .line 84
    iget-object v0, p0, Lcom/android/videoeditor/ProjectsActivity$1;->this$0:Lcom/android/videoeditor/ProjectsActivity;

    invoke-static {v0}, Lcom/android/videoeditor/ProjectsActivity;->access$200(Lcom/android/videoeditor/ProjectsActivity;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/ProjectsActivity$1;->this$0:Lcom/android/videoeditor/ProjectsActivity;

    invoke-static {v1}, Lcom/android/videoeditor/ProjectsActivity;->access$100(Lcom/android/videoeditor/ProjectsActivity;)Lcom/android/videoeditor/ProjectPickerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    :cond_0
    return-void
.end method
