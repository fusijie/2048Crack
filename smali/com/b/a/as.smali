.class final Lcom/b/a/as;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/b/a/aq$aa;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Landroid/graphics/drawable/Drawable;

.field private final synthetic d:Lcom/b/a/ap;

.field private final synthetic e:Landroid/widget/ImageView;

.field private final synthetic f:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/b/a/aq$aa;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Ljava/util/ArrayList;)V
    .locals 1

    iput-object p1, p0, Lcom/b/a/as;->a:Lcom/b/a/aq$aa;

    iput-object p2, p0, Lcom/b/a/as;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/b/a/as;->c:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/as;->d:Lcom/b/a/ap;

    iput-object p4, p0, Lcom/b/a/as;->e:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/b/a/as;->f:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v4, 0x0

    sget-boolean v0, Lcom/b/a/aq;->c:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/as;->a:Lcom/b/a/aq$aa;

    iget-object v1, v0, Lcom/b/a/aq$aa;->a:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    new-instance v0, Lcom/b/a/aq$ac;

    iget-object v2, p0, Lcom/b/a/as;->b:Ljava/lang/String;

    sget-object v3, Lcom/b/a/aq;->a:Landroid/content/res/Resources;

    invoke-direct {v0, v2, v3, v1}, Lcom/b/a/aq$ac;-><init>(Ljava/lang/String;Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_1
    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No usable result, defaulting "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/b/a/as;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/b/a/aq;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/b/a/as;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/b/a/aq;->c()Lcom/b/a/ag;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/as;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/b/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    :goto_0
    invoke-static {}, Lcom/b/a/aq;->d()Ljava/util/Hashtable;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/as;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/b/a/as;->d:Lcom/b/a/ap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/b/a/as;->e:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/b/a/as;->d:Lcom/b/a/ap;

    iget-object v0, p0, Lcom/b/a/as;->a:Lcom/b/a/aq$aa;

    iget-object v0, v0, Lcom/b/a/aq$aa;->a:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/b/a/as;->b:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/b/a/as;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v4

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Populated: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/b/a/aq;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {}, Lcom/b/a/aq;->e()Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v6, p0, Lcom/b/a/as;->b:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Ignoring out of date request to update view for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/b/a/as;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/b/a/aq;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v3, 0x1

    invoke-static {}, Lcom/b/a/aq;->e()Ljava/util/Hashtable;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_5

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    iget-object v3, p0, Lcom/b/a/as;->d:Lcom/b/a/ap;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/b/a/as;->e:Landroid/widget/ImageView;

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lcom/b/a/as;->d:Lcom/b/a/ap;

    iget-object v0, p0, Lcom/b/a/as;->a:Lcom/b/a/aq$aa;

    iget-object v0, v0, Lcom/b/a/aq$aa;->a:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/b/a/as;->b:Ljava/lang/String;

    :cond_6
    move v3, v1

    goto :goto_1

    :cond_7
    move-object v2, v0

    goto/16 :goto_0
.end method
