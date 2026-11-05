.class public Lcom/android/videoeditor/widgets/TimelineRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "TimelineRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/videoeditor/widgets/TimelineRelativeLayout$LayoutCallback;
    }
.end annotation


# instance fields
.field private mLayoutCallback:Lcom/android/videoeditor/widgets/TimelineRelativeLayout$LayoutCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/videoeditor/widgets/TimelineRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/videoeditor/widgets/TimelineRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/widgets/TimelineRelativeLayout;->setMotionEventSplittingEnabled(Z)V

    .line 47
    return-void
.end method


# virtual methods
.method public onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 70
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 72
    iget-object v0, p0, Lcom/android/videoeditor/widgets/TimelineRelativeLayout;->mLayoutCallback:Lcom/android/videoeditor/widgets/TimelineRelativeLayout$LayoutCallback;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/videoeditor/widgets/TimelineRelativeLayout;->mLayoutCallback:Lcom/android/videoeditor/widgets/TimelineRelativeLayout$LayoutCallback;

    invoke-interface {v0}, Lcom/android/videoeditor/widgets/TimelineRelativeLayout$LayoutCallback;->onLayoutComplete()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/videoeditor/widgets/TimelineRelativeLayout;->mLayoutCallback:Lcom/android/videoeditor/widgets/TimelineRelativeLayout$LayoutCallback;

    .line 76
    :cond_0
    return-void
.end method

.method public requestLayout(Lcom/android/videoeditor/widgets/TimelineRelativeLayout$LayoutCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/videoeditor/widgets/TimelineRelativeLayout$LayoutCallback;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/videoeditor/widgets/TimelineRelativeLayout;->mLayoutCallback:Lcom/android/videoeditor/widgets/TimelineRelativeLayout$LayoutCallback;

    .line 65
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TimelineRelativeLayout;->requestLayout()V

    .line 66
    return-void
.end method

.method public setSelected(Z)V
    .locals 4
    .param p1, "selected"    # Z

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TimelineRelativeLayout;->getChildCount()I

    move-result v1

    .line 81
    .local v1, "childrenCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 82
    invoke-virtual {p0, v2}, Lcom/android/videoeditor/widgets/TimelineRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, "childView":Landroid/view/View;
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 84
    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 81
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "childView":Landroid/view/View;
    :cond_1
    return-void
.end method
