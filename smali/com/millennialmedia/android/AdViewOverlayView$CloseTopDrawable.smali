.class Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;
.super Lcom/millennialmedia/android/AdViewOverlayView$CloseDrawable;
.source "AdViewOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/AdViewOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CloseTopDrawable"
.end annotation


# instance fields
.field final dist:F

.field final scale:F


# direct methods
.method constructor <init>(ZF)V
    .locals 2
    .parameter "enabled"
    .parameter "scale"

    .prologue
    .line 538
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/AdViewOverlayView$CloseDrawable;-><init>(Z)V

    .line 539
    iput p2, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->scale:F

    .line 540
    const/high16 v0, 0x4080

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->dist:F

    .line 541
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 542
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v5, -0x1

    const/high16 v4, -0x100

    const/high16 v3, 0x41a0

    const/high16 v2, 0x4120

    .line 547
    invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 548
    .local v6, bounds:Landroid/graphics/Rect;
    iget v0, v6, Landroid/graphics/Rect;->right:I

    iget v1, v6, Landroid/graphics/Rect;->left:I

    sub-int v10, v0, v1

    .line 549
    .local v10, width:I
    int-to-float v0, v10

    div-float v9, v0, v2

    .line 550
    .local v9, strokeWidth:F
    iget v0, v6, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->scale:F

    mul-float/2addr v1, v3

    sub-float v7, v0, v1

    .line 551
    .local v7, cx:F
    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->scale:F

    mul-float/2addr v1, v3

    add-float v8, v0, v1

    .line 552
    .local v8, cy:F
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 553
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 554
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 555
    const/high16 v0, 0x4140

    iget v1, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->scale:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 556
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 557
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 558
    iget v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->scale:F

    mul-float/2addr v0, v2

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 559
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 560
    const/high16 v0, 0x40e0

    iget v1, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->scale:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 561
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 562
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    div-float v1, v9, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 563
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 564
    iget v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->dist:F

    sub-float v1, v7, v0

    iget v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->dist:F

    sub-float v2, v8, v0

    iget v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->dist:F

    add-float v3, v7, v0

    iget v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->dist:F

    add-float v4, v8, v0

    iget-object v5, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 565
    iget v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->dist:F

    add-float v1, v7, v0

    iget v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->dist:F

    sub-float v2, v8, v0

    iget v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->dist:F

    sub-float v3, v7, v0

    iget v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->dist:F

    add-float v4, v8, v0

    iget-object v5, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 566
    return-void
.end method
