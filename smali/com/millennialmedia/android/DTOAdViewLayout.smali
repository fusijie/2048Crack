.class Lcom/millennialmedia/android/DTOAdViewLayout;
.super Ljava/lang/Object;
.source "DTOAdViewLayout.java"


# instance fields
.field height:I

.field width:I

.field xWindowPosition:I
    .annotation runtime Lcom/millennialmedia/google/gson/annotations/SerializedName;
        value = "x"
    .end annotation
.end field

.field yWindowPosition:I
    .annotation runtime Lcom/millennialmedia/google/gson/annotations/SerializedName;
        value = "y"
    .end annotation
.end field


# direct methods
.method constructor <init>(IIII)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/millennialmedia/android/DTOAdViewLayout;->xWindowPosition:I

    .line 11
    iput p2, p0, Lcom/millennialmedia/android/DTOAdViewLayout;->yWindowPosition:I

    .line 12
    iput p3, p0, Lcom/millennialmedia/android/DTOAdViewLayout;->width:I

    .line 13
    iput p4, p0, Lcom/millennialmedia/android/DTOAdViewLayout;->height:I

    .line 14
    return-void
.end method
