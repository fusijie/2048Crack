.class public final Lcom/nextpeer/android/NextpeerUIVerticalTextView;
.super Landroid/widget/TextView;


# instance fields
.field final a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/nextpeer/android/NextpeerUIVerticalTextView;->getGravity()I

    move-result v0

    invoke-static {v0}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v1

    if-eqz v1, :cond_0

    and-int/lit8 v1, v0, 0x70

    const/16 v2, 0x50

    if-ne v1, v2, :cond_0

    and-int/lit8 v0, v0, 0x7

    or-int/lit8 v0, v0, 0x30

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/NextpeerUIVerticalTextView;->setGravity(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/NextpeerUIVerticalTextView;->a:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/NextpeerUIVerticalTextView;->a:Z

    goto :goto_0
.end method


# virtual methods
.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/nextpeer/android/NextpeerUIVerticalTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nextpeer/android/NextpeerUIVerticalTextView;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {p0}, Lcom/nextpeer/android/NextpeerUIVerticalTextView;->getDrawableState()[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v0, p0, Lcom/nextpeer/android/NextpeerUIVerticalTextView;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nextpeer/android/NextpeerUIVerticalTextView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x42b4

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    :goto_0
    invoke-virtual {p0}, Lcom/nextpeer/android/NextpeerUIVerticalTextView;->getCompoundPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/nextpeer/android/NextpeerUIVerticalTextView;->getExtendedPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0}, Lcom/nextpeer/android/NextpeerUIVerticalTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/nextpeer/android/NextpeerUIVerticalTextView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, -0x3d4c

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_0
.end method

.method protected final onMeasure(II)V
    .locals 2

    invoke-super {p0, p2, p1}, Landroid/widget/TextView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/nextpeer/android/NextpeerUIVerticalTextView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/nextpeer/android/NextpeerUIVerticalTextView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/nextpeer/android/NextpeerUIVerticalTextView;->setMeasuredDimension(II)V

    return-void
.end method
