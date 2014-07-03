.class public final Lcom/d/a/aa;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/view/View;)F
    .locals 1

    sget-boolean v0, Lcom/d/a/a/aa;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/d/a/a/aa;->a(Landroid/view/View;)Lcom/d/a/a/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/d/a/a/aa;->a()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    goto :goto_0
.end method

.method public static a(Landroid/view/View;F)V
    .locals 1

    sget-boolean v0, Lcom/d/a/a/aa;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/d/a/a/aa;->a(Landroid/view/View;)Lcom/d/a/a/aa;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/d/a/a/aa;->a(F)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setX(F)V

    goto :goto_0
.end method

.method public static b(Landroid/view/View;)F
    .locals 1

    sget-boolean v0, Lcom/d/a/a/aa;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/d/a/a/aa;->a(Landroid/view/View;)Lcom/d/a/a/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/d/a/a/aa;->b()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v0

    goto :goto_0
.end method

.method public static b(Landroid/view/View;F)V
    .locals 1

    sget-boolean v0, Lcom/d/a/a/aa;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/d/a/a/aa;->a(Landroid/view/View;)Lcom/d/a/a/aa;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/d/a/a/aa;->b(F)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setY(F)V

    goto :goto_0
.end method
