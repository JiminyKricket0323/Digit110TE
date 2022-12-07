<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns="http://www.w3.org/1999/xhtml">
    
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" 
        include-content-type="no" indent="yes"/>
    


<xsl:template match="/">
    
    <html>
        <head>
            <title>The Oblivion Crisis</title>
            <link rel="stylesheet" type="test/css" href="skyrim_style.css"></link>
            <style type="text/css"></style>
        </head>
        
        <body>
            <h1>The Oblivion Crisis</h1>
            <xsl:apply-templates select="child::decendant"></xsl:apply-templates>
        </body>
    </html>
    
    
</xsl:template>
<xsl:template match="paragraph">
 
        <p><xsl:apply-templates/></p>
    
</xsl:template>

<xsl:template match="QuestEvent">
    <strong>
        <xsl:apply-templates/>
    </strong>
</xsl:template>

<xsl:template match="QuestItem">
    
    <span class="item"><xsl:apply-templates/></span>
    
</xsl:template>

<xsl:template match="character">
    
    <span class="char"><xsl:apply-templates/></span>
    
</xsl:template>

<xsl:template match="epithet">
    
    <span class="epithet"><xsl:apply-templates/></span>
    
</xsl:template>

<xsl:template match="faction[@ref='MythicDawn']">
    
    <xsl:apply-templates/>
    
</xsl:template>

<xsl:template match="location">
    
    <span class="location"><xsl:apply-templates/></span>
    
</xsl:template>
</xsl:stylesheet>