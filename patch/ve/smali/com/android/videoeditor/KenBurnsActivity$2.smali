.class Lcom/android/videoeditor/KenBurnsActivity$2;
.super Ljava/lang/Object;
.source "KenBurnsActivity.java"

# interfaces
.implements Lcom/android/videoeditor/widgets/ImageViewTouchBase$ImageTouchEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/KenBurnsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/KenBurnsActivity;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/KenBurnsActivity;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/videoeditor/KenBurnsActivity$2;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity$2;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    invoke-static {v0}, Lcom/android/videoeditor/KenBurnsActivity;->access$1200(Lcom/android/videoeditor/KenBurnsActivity;)Landroid/view/ScaleGestureDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 330
    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity$2;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    invoke-static {v0}, Lcom/android/videoeditor/KenBurnsActivity;->access$1300(Lcom/android/videoeditor/KenBurnsActivity;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 331
    const/4 v0, 0x1

    return v0
.end method
