# Issue

**Title:** added streamlit app with ability to upload files

## Description

just for fun 


This PR, specifically:
- Instructions added to readme
- streamlit package added to setup
- some logging messages duplicated (previously just printed to terminal - now also to streamlit app)
- streamlit app added -> when files are uploaded, they get added to registry


Things we can do in the future: 
- more add st.markdown lines to print directly to the app as needed
- add ability to handle different file types
- implement chat model & use streamlit app to chat

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `60bb0e680fb5`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.