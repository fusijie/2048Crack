.class Lcom/millennialmedia/android/MMAdView$BannerBounds;
.super Ljava/lang/Object;
.source "MMAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/MMAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BannerBounds"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/MMAdView$BannerBounds$BoundsResult;
    }
.end annotation


# instance fields
.field resizeParams:Lcom/millennialmedia/android/DTOResizeParameters;

.field final synthetic this$0:Lcom/millennialmedia/android/MMAdView;

.field translationX:I

.field translationY:I


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/DTOResizeParameters;)V
    .locals 1
    .parameter
    .parameter "resizeParams"

    .prologue
    .line 727
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->this$0:Lcom/millennialmedia/android/MMAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 728
    iput-object p2, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->resizeParams:Lcom/millennialmedia/android/DTOResizeParameters;

    .line 729
    iget v0, p2, Lcom/millennialmedia/android/DTOResizeParameters;->offsetX:I

    iput v0, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->translationX:I

    .line 730
    iget v0, p2, Lcom/millennialmedia/android/DTOResizeParameters;->offsetY:I

    iput v0, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->translationY:I

    .line 731
    return-void
.end method

.method private calculateBounds(IIII)Lcom/millennialmedia/android/MMAdView$BannerBounds$BoundsResult;
    .locals 4
    .parameter "screenPos"
    .parameter "offset"
    .parameter "size"
    .parameter "max"

    .prologue
    .line 766
    move v1, p1

    .line 767
    .local v1, newStart:I
    move v0, p3

    .line 768
    .local v0, newSize:I
    add-int v3, p1, p3

    add-int/2addr v3, p2

    if-le v3, p4, :cond_2

    .line 770
    sub-int v3, p4, p3

    add-int v1, v3, p2

    .line 771
    if-gez v1, :cond_1

    .line 772
    const/4 v1, 0x0

    .line 773
    move v0, p4

    .line 781
    :cond_0
    :goto_0
    new-instance v2, Lcom/millennialmedia/android/MMAdView$BannerBounds$BoundsResult;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/millennialmedia/android/MMAdView$BannerBounds$BoundsResult;-><init>(Lcom/millennialmedia/android/MMAdView$BannerBounds;Lcom/millennialmedia/android/MMAdView$1;)V

    .line 782
    .local v2, result:Lcom/millennialmedia/android/MMAdView$BannerBounds$BoundsResult;
    sub-int v3, v1, p1

    iput v3, v2, Lcom/millennialmedia/android/MMAdView$BannerBounds$BoundsResult;->translation:I

    .line 783
    iput v0, v2, Lcom/millennialmedia/android/MMAdView$BannerBounds$BoundsResult;->size:I

    .line 784
    return-object v2

    .line 774
    .end local v2           #result:Lcom/millennialmedia/android/MMAdView$BannerBounds$BoundsResult;
    :cond_1
    add-int v3, v1, p3

    if-le v3, p4, :cond_0

    .line 775
    sub-int v1, p4, p3

    goto :goto_0

    .line 777
    :cond_2
    if-lez p2, :cond_0

    .line 778
    move v1, p2

    goto :goto_0
.end method

.method private calculateXBounds()V
    .locals 6

    .prologue
    .line 741
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 742
    .local v0, loc:[I
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->this$0:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v3, v0}, Lcom/millennialmedia/android/MMAdView;->getLocationInWindow([I)V

    .line 743
    const/4 v3, 0x0

    aget v2, v0, v3

    .line 745
    .local v2, xLoc:I
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->resizeParams:Lcom/millennialmedia/android/DTOResizeParameters;

    iget v3, v3, Lcom/millennialmedia/android/DTOResizeParameters;->offsetX:I

    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->resizeParams:Lcom/millennialmedia/android/DTOResizeParameters;

    iget v4, v4, Lcom/millennialmedia/android/DTOResizeParameters;->width:I

    iget-object v5, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->resizeParams:Lcom/millennialmedia/android/DTOResizeParameters;

    iget v5, v5, Lcom/millennialmedia/android/DTOResizeParameters;->xMax:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/millennialmedia/android/MMAdView$BannerBounds;->calculateBounds(IIII)Lcom/millennialmedia/android/MMAdView$BannerBounds$BoundsResult;

    move-result-object v1

    .line 747
    .local v1, resultX:Lcom/millennialmedia/android/MMAdView$BannerBounds$BoundsResult;
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->resizeParams:Lcom/millennialmedia/android/DTOResizeParameters;

    iget v4, v1, Lcom/millennialmedia/android/MMAdView$BannerBounds$BoundsResult;->size:I

    iput v4, v3, Lcom/millennialmedia/android/DTOResizeParameters;->width:I

    .line 748
    iget v3, v1, Lcom/millennialmedia/android/MMAdView$BannerBounds$BoundsResult;->translation:I

    iput v3, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->translationX:I

    .line 749
    return-void
.end method

.method private calculateYBounds()V
    .locals 6

    .prologue
    .line 753
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 754
    .local v0, loc:[I
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->this$0:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v3, v0}, Lcom/millennialmedia/android/MMAdView;->getLocationInWindow([I)V

    .line 755
    const/4 v3, 0x1

    aget v2, v0, v3

    .line 757
    .local v2, yLoc:I
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->resizeParams:Lcom/millennialmedia/android/DTOResizeParameters;

    iget v3, v3, Lcom/millennialmedia/android/DTOResizeParameters;->offsetY:I

    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->resizeParams:Lcom/millennialmedia/android/DTOResizeParameters;

    iget v4, v4, Lcom/millennialmedia/android/DTOResizeParameters;->height:I

    iget-object v5, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->resizeParams:Lcom/millennialmedia/android/DTOResizeParameters;

    iget v5, v5, Lcom/millennialmedia/android/DTOResizeParameters;->yMax:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/millennialmedia/android/MMAdView$BannerBounds;->calculateBounds(IIII)Lcom/millennialmedia/android/MMAdView$BannerBounds$BoundsResult;

    move-result-object v1

    .line 759
    .local v1, resultY:Lcom/millennialmedia/android/MMAdView$BannerBounds$BoundsResult;
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->resizeParams:Lcom/millennialmedia/android/DTOResizeParameters;

    iget v4, v1, Lcom/millennialmedia/android/MMAdView$BannerBounds$BoundsResult;->size:I

    iput v4, v3, Lcom/millennialmedia/android/DTOResizeParameters;->height:I

    .line 760
    iget v3, v1, Lcom/millennialmedia/android/MMAdView$BannerBounds$BoundsResult;->translation:I

    iput v3, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->translationY:I

    .line 761
    return-void
.end method


# virtual methods
.method calculateOnScreenBounds()V
    .locals 0

    .prologue
    .line 735
    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdView$BannerBounds;->calculateXBounds()V

    .line 736
    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdView$BannerBounds;->calculateYBounds()V

    .line 737
    return-void
.end method

.method modifyLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "oldParams"

    .prologue
    .line 796
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->resizeParams:Lcom/millennialmedia/android/DTOResizeParameters;

    iget v0, v0, Lcom/millennialmedia/android/DTOResizeParameters;->width:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 797
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->resizeParams:Lcom/millennialmedia/android/DTOResizeParameters;

    iget v0, v0, Lcom/millennialmedia/android/DTOResizeParameters;->height:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 798
    return-object p1
.end method
