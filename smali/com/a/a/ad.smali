.class public abstract enum Lcom/a/a/ad;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/a/a/aj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/a/a/ad;",
        ">;",
        "Lcom/a/a/aj;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/a/a/ad;

.field public static final enum b:Lcom/a/a/ad;

.field public static final enum c:Lcom/a/a/ad;

.field public static final enum d:Lcom/a/a/ad;

.field public static final enum e:Lcom/a/a/ad;

.field private static final synthetic f:[Lcom/a/a/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/a/a/ae;

    const-string v1, "IDENTITY"

    invoke-direct {v0, v1}, Lcom/a/a/ae;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/a/a/ad;->a:Lcom/a/a/ad;

    new-instance v0, Lcom/a/a/af;

    const-string v1, "UPPER_CAMEL_CASE"

    invoke-direct {v0, v1}, Lcom/a/a/af;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/a/a/ad;->b:Lcom/a/a/ad;

    new-instance v0, Lcom/a/a/ag;

    const-string v1, "UPPER_CAMEL_CASE_WITH_SPACES"

    invoke-direct {v0, v1}, Lcom/a/a/ag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/a/a/ad;->c:Lcom/a/a/ad;

    new-instance v0, Lcom/a/a/ah;

    const-string v1, "LOWER_CASE_WITH_UNDERSCORES"

    invoke-direct {v0, v1}, Lcom/a/a/ah;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/a/a/ad;->d:Lcom/a/a/ad;

    new-instance v0, Lcom/a/a/ai;

    const-string v1, "LOWER_CASE_WITH_DASHES"

    invoke-direct {v0, v1}, Lcom/a/a/ai;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/a/a/ad;->e:Lcom/a/a/ad;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/a/a/ad;

    const/4 v1, 0x0

    sget-object v2, Lcom/a/a/ad;->a:Lcom/a/a/ad;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/a/a/ad;->b:Lcom/a/a/ad;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/a/a/ad;->c:Lcom/a/a/ad;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/a/a/ad;->d:Lcom/a/a/ad;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/a/a/ad;->e:Lcom/a/a/ad;

    aput-object v2, v0, v1

    sput-object v0, Lcom/a/a/ad;->f:[Lcom/a/a/ad;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/a/a/ad;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lt v1, v3, :cond_2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_1
    return-object p0

    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/ad;
    .locals 1

    const-class v0, Lcom/a/a/ad;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/a/ad;

    return-object v0
.end method

.method public static values()[Lcom/a/a/ad;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/a/a/ad;->f:[Lcom/a/a/ad;

    array-length v1, v0

    new-array v2, v1, [Lcom/a/a/ad;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
